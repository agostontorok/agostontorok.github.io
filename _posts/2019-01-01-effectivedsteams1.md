---
title: "Business vision in effective data science teams"
layout: post
date: '2019-01-01'
tags: [leadership, business, comics]
---

This is the first part of a mini-series that summarizes my impressions on what makes certain data science teams effective. Over the years, I have worked in several teams: teams of various sizes, from as small as a duo to as large as a dozen data experts; and of various players, from college dropout savants through rebranded software engineers to PhD/postdocs with long years of academic experience. My role was also changing, I started as a junior and with time and experience developed to be a team lead.

Data science is a new field. It is so new that even the term data science is only [12 years old](https://onlinelibrary.wiley.com/doi/abs/10.1111/j.1751-5823.2001.tb00477.x). It is a vibrant field though, a meeting point of people with different backgrounds, forming best practices, and high hopes from the stakeholders. The constellation of these factors makes it impossible to blindly generalize everything that we know about effective teamwork to the field of data science. Nevertheless, I think there is a recipe that turns the right ingredients — smart people — into that vital edge the company needs.

This recipe starts with the aspect I most often hear from managers: realizing the place of the data science team in the entire business. It’s tempting to believe that data science salaries are high because we are that smart but it could not be farther from the truth. The high salary is the effect of the high (anticipated) value that the company expects from the data science team. This means that the everyday job of a data scientist in a business environment should be not so much about inventing a new network architecture as about solving critical challenges in finite time.

# Data science step-by-step

<img class="  wp-image-74 alignright" src="/public/img/edst1_1.png" alt="" width = "auto" height="350" />
<em>John is contemplating a two doors dilemma. One seems to be a really big area to explore but the other has a nice ergonomic chair…</em>

Many people would think at this point that the latter takes away the essence of working on a cutting edge field. Actually, it’s the opposite, coming up with a new network architecture is frustrating: it requires not only a smart person but also years of experience on the field and a social network of fellow researchers to think together about the problem. Without these (and [even often together with these](https://www.nature.com/articles/d41586-018-04023-5)), most of the individuals simply burn out during the quest, in a matter of years. And mind that a career lasts decades, not years.

Focusing on mission-critical challenges and time — on the other hand — helps in seeing the goal as something tangible. If your task is to optimize the layout of the company webpage for optimal conversion rate then you can see the effect of your work anytime. Tangible goals are also easier to chunk into subgoals that you can separately address. Let’s say that you want to build a robot that waves back when you wave at it, this requires a computer vision solution to recognize waving and a control solution that would function the response of the robot. Easier than completing the task of “build a social robot”, right? The waving robot is a less capable output I understand, but it’s an output that is actually produced and enables the next step in the social robot direction.

Actually, something very similar is going on in successful research labs as well. I remember first time meeting Elisa Ferre when I was working on a project at UCL, London. At that time, she was a postdoc at the lab of Patrick Haggard, one of the most productive labs at the whole university. She had a very clear focus on the aims of the experiment we were designing. This helped to remove every aspect that was not critical to the success of the experiment. She efficiently chunked the work to design, pilot, and experiment parts and defined S.M.A.R.T goals for each part. She did it not based on reading books on how to do project management but based on the first-hand experience with a dozen similar projects over the years. I was amazed. At that point understood that top universities are not necessarily about people being smarter but about smart people doing research very efficiently.

# The role of an expert

<img class="  wp-image-74 alignright" src="/public/img/edst1_2.png" alt="" width = "auto" height="350" />
<em>Mike has another meeting in 5 minutes and wants to know before that if it should be A or B…</em>

In this field the more senior you are the more often you will be asked by the stakeholders for expert advice. Here is an example situation:

_CEO: John, I understand you spent the last three weeks with investigating whether we should run our campaign with Gal Gadot or Margot Robbie. So: who should we choose?_

_DS: We investigated the problem using the following approach: we looked at the preferences of the followers of our Facebook, Twitter and Instagram pages. Then we compared the occurrence of Gal Gadot and Margot Robbie likes in these three groups using chi-square statistics, we found significant differences for Facebook and Twitter but not for Instagram. We did not merge these groups because we understand that the user-base of the three platforms is different and thought that this way you get a more fine-grained picture. Then, because overall the size of the intersection between our followers and that of Gal Gadot or Margot Robbie was small we tried to predict if a person would like Margot Robbie and/or Gal Gadot based on all of their known preferences using collaborative filtering. In that analysis, we decided to predict the preference for ten other actresses as well, which could also be the face of our campaign. These were Scarlett Johannson, … blablabla._

I bet for most of us this story just got interesting, so why did I not finish? Well, first of all, do you really think that John will finish this line of thought by saying _“my analysis shows, you should choose Gal Gadot/Margot Robbie”_ or something like _“I think if we would build a recurrent neural network then we would understand how the interest of our followers changed over time for the different actresses…”_. Let’s clarify things a bit, the question of the CEO was _“what do you predict, would we sell more perfume with Gal Gadot or with Margot Robbie in the ad?”_ What she expected was simply “Gal Gadot”. Most of the CEOs have no knowledge of the chi-square statistics, of the kernel trick, or the reparametrization, but they don’t need that, they have you for that. What they need is the ability to make the right business decisions once they have the necessary knowledge. But the necessary knowledge is again not understanding stochastic processes or linear algebra, only whether your analysis tells (A or B) and how certain you are about that. All the details are secondary.

I remember hearing from a fellow data scientist, that he wants to tell all the details to the manager because the manager has all the business information and he should have all the scientific information as well in order to make a decision. That sounds fair, except that as I said most managers don’t have the credentials to fully appreciate what does a p-value mean or what is the limitation the Gaussian assumption in the Kalman filter. For them, this is all information that just increases the uncertainty of the project for them, whereas a trained data expert should be able to differentiate between more and less important limitations. So next time you are asked for an expert advice try to give one and say “Based on the data, the better choice is Gal Gadot”.

# We are making the change

<img class="  wp-image-74 alignright" src="/public/img/edst1_3.png" alt="" width = "auto" height="350" />
<em>Deadline day. John is expecting Marc to deliver his solution for the project. He did not understand why Marc was asking for more time to develop the solution.</em>

So far I talked about more of the individual perspective, but before ending these thoughts it is necessary to talk about the team perspective as well. What is common in the communication of Google, Apple, Amazon and Netflix leaders and employees? Just listen to how Sundar Pichai, Tim Cook, Jeff Bezos or Reed Hastings talk about what they are doing. _We are introducing, we’ve found, and our vision_ are just some of the expressions you can hear in these talks, not any I’m introducing, I’ve found or even my vision. These keynotes are texted carefully to bring a very important message through: we (aka. the people of the company) are making the change. This message is crucial because it lets people being part of the greater whole. Understanding the business goal as a manager is not enough, solely your understanding will not bring the best performance of your team. They also need to understand it, which is easiest if they can relate to it and see their role in enabling something grand.

In 1962, when JFK visited a NASA facility, he met a janitor and asked what he was doing, the janitor’s response was _“I’m helping put a man on the Moon”_. That is, he was not just cleaning the floor of some building, he was making sure that his colleagues — that happen to be astronauts — can do their job in the nicest, most hygienic environment possible that would stimulate their creativity and help them reach the Moon. That janitor had a really unique talent and not many people see their job this way. Oftentimes, despite actually putting people on the Moon. If you read this article, chances are that you and your colleagues are working on something that is close in significance to flying to the Moon. The problem with that is twofold. First, we are spending 8+ hours of our day at the workplace; it is much more satisfying to feel that our time is translated to an actual change in the state of the world. Second, perhaps even more important from the perspective of the current post, if you don’t see the relation of your work to any bigger picture then you are not able to bring the best out of yourself simply because you don’t know the place of your work and its relation to others’ works or to the final product. This is especially true for jobs requiring high abstraction capability and creativity.

The take-home message from this is that when you are a manager and see the place of the data science team in the business that’s good but you should not stop there. You should help to bring this knowledge in connection to the work of each individual in your team. This is not only telling them the motto of the company but rather translating it into data science terms and filling it up with content that they can relate their work to. At AGT, we work on the future of sport using IOT. This is the bigger picture, from a very high level. My job is to translate this to tangible goals for us and find which machine learning tools and how they can help to reach them. Having this system view, I believe, is essential for a data science team so that all these minds can understand the role of the features they enable and the consequences of having suboptimal performance, runtime, or generalization ability for their models.

Interesting questions, of course, come after having this covered. So stay tuned to learn about agile development work in a data science teams, expectation management, talent management and much more. If you have any questions or topics that you want to hear more about let me know in the comment section. 