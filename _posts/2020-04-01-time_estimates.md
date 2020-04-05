---
title: "Why overdue tasks take still a long time to finish?"
layout: post
date: '2020-04-01'
tags: lean business data science product
---

The prototypical situation that is puzzling me for a while is the following:
- We estimated 3 days for a task
- Bob is working on the task for 3 days already
- On the daily scrum, he says that it's just a couple more things and it is finished
- The task is not finished the next day

Sometimes these stories are not finished even after five days of work. Since they are typically "more research-less development" tasks, many people suggest accepting this kind of uncertainty as inherent to research. While I agree to a point, I don't want to give up predictability so easily. A year ago, Erik Bernhardsson sought a [fascinating account for time estimations](https://erikbern.com/2019/04/15/why-software-projects-take-longer-than-you-think-a-statistical-model.html), concluding that the reason why development tasks take longer than expected is that the blow-up factor (actual time/expected time) follows a lognormal distribution and our estimates are accurate for the median but not so much for the mean task completion time. I really liked his post and re-read it several times last year because it finally helped me to understand why is it so challengingchallenging to play scrum poker. I'm taking his model as the basis for my work here, to see if we need to finetune our estimate for task completion? 

## Estimates are smaller than expected finishing times

When in the above example, Bob was 3 days into the task it is intuitive to believe that he is really about to finish it, after all, we estimated 3 days for the task. However, statistically speaking our 3 days estimate was an estimate for the median of the underlying distribution. The median of the distribution does not say too much about the scale of the values, it just says plain and simple that in 50% of the time the task is going to take shorter and 50% of the time it's going to take longer than this. A problem with the median is that it is __not__ sensitive to the uncertainty in the task. However, when you want to calculate the development time of a feature, you do want to take into account the uncertainty. Therefore, it is better to calculate the expected value for the task completion time for which I believe we have pretty much all the information we need. Let's see:

The expected value for the lognormal distribution is:

$$ \operatorname{E} = \exp(\mu + \frac{\sigma^2}{2}) $$

For this, we need to know two parameters $\mu$ and $\sigma$. Luckily, we have an unbiased estimate for the median, and since that is:

$$ Median = \exp(\mu) $$

We have $\mu$ already. For $\sigma$, the case is a bit more tricky but not hopeless. Erik's idea was to use the gut feeling of risk. My proposal, in addition, is to use the spread of the scrum poker estimates as an uncalibrated estimate for $\sigma$. It is uncalibrated though because while it is correlated with the uncertainty (a priori), we don't know the scaling factor. Probably, this is team and environment-dependent also so best is to estimate it based on the data that you may collect from the sprints. Basically, you need the individual estimates and the actual time to be able to fit a simple model and get $\sigma$ for your team. One addition: likely, the uncertainty around a task can be better estimated with a model that also factors the assignee in. Some people are better at streamlining, while others are much more prone to the detailing. 

## The Bermuda triangle of the "Doing" column

So let's get back to the daily scrum where Bob told that he is about to finish the task that we estimated 3 story points (just as a remark Bob is a fictive colleague of any team). The question is whether we should just accept that the mean completion time is anyway longer than our estimate (median) and move forward or there is more to the story.

Let's say when we did the scrum poker we voted the following: Me: 2; John: 2, Bob: 3, Sarah: 3, Linda: 5, Mary: 5. Based on this we made the estimate of 3 days. Now the three days passed, shall we still accept the same estimate? Actually, it turned out that both John and Me were wrong with this task, so one can see intuitively already that the median has grown in the subset of the still valid estimates (it is 4 now). In a more general account, when we made our estimate before the task was started, we took into account all kinds of outcomes, amongst them the case when the task is completed in a few minutes (Bob realizes that the feature with a different name is already available somewhere) to the absurd case of very long (when it seems the feature is much more complicated than we assessed). Statistically, we calculate the expected value by integrating over the entire distribution. Now for any time point $t > 0$ it is evident that we can't take times between 0 and $t$ in the integration and have to calculate the expected value by:

$$ \operatorname{E}[X] = \int_{t}^{\infty} x f(x)\, dx. $$

Where $f(x)$ is the conditional probability of $x$ given that we are considering only point from $t$ to  $\infty$. So we are not considering the cases which did not happen anymore and took the task as one that has taken at least time $t$ to complete already.

So although beyond the peak of the distribution points right after $t$ have a relatively higher probability than points farther away, there are much more points farther away and the curvature is also changing moving away from the peak, so the expected value is actually blowing up. Let's show it with an example. Let's take three cases to illustrate, (1) where the task is in to do and we have not started it yet, (2) where the task is in process for already the estimated time (blowup factor of 1), and (3) where the task is in process for double the estimated time (blowup factor of 2).

![png](https://cdn-images-1.medium.com/max/1000/1*R2GEZ5OapLO0L-tZlECiMg.png)


Now you see a paradoxical thing: the remaining time, operationalized by $\operatorname{E}_t - t$, is not shrinking as we proceed but it is growing. This, of course, does not mean that we cannot finish tasks; it just helps to make increasingly better estimates for the remaining work by factoring in the elapsed time. We can use this knowledge to multiple things. It helps the team to make the decision when to cut or restructure a task and in general to understand when it is likely to be finished (i.e. as a rule of thumb reject the notion of finishing in the next hour when the blowup factor is already 2). 

This knowledge is also critical to recognize tasks that are becoming impossible to finish in time. We have seen several tasks, which seemed tractable at first sight and then became the boogieman for the project. It is essential to detect these as early as possible and rethink deliverables, handle expectations, and/or come up with alternative solutions. 

Also, the assumption in this exercise is that during the task execution, there is no feedback effect of the inspection. In reality, the feedback of the team during the daily scrum or of the stakeholders during a review may change the approach (with the distribution) and hence the expected time to finish too. In fact, if you look at the distribution of blowup factors in the SiP dataset (which Erik also looked at) the right tail is not as heavy as one would expect from a standard lognormal distribution, my hypothesis is that the main reason behind this is exactly feedback, control and restructuring mechanisms when the blowup factor becomes large. So as a bottom line, pay close attention in the daily scrum and help to avoid story completion time blowup. 


