---
title: "Three challenges of the AI product lifecycle"
layout: post
date: '2019-08-01'
tags: lean business data science product
---

Working on AI products — Whether it is retail, IoT, or marketing — data scientists face similar challenges. Some of these challenges are general to many technology areas, others are specific to AI, due to its unique way this field blurs the boundaries between state-of-the-art research and application development. Let’s look at three prototypical examples of these challenges in the areas of business specification, iterative development of analytics, and testing.

# Specification of business requirements

## _The challenge_

One of the most frequent topics that we data science practitioners like to talk about is the question of how business requirements are formulated. This can bring with it a variety of challenges depending on the perspective someone takes. On one end of the spectrum, we often like to make the claim that t_he people in charge of the business (the CEO, board, marketing team, sales team, product managers etc.) do not know what they want_. This is a frustrating place to be. On the other end of the spectrum, we often boast (without a hint of self-pity) that  _the business unit commissioned us to build something akin to a time machine or teleportation tube_. As you can imagine, this isn’t an enviable place to be in, either.

<img class="  wp-image-74 alignright" src="https://miro.medium.com/max/1154/1*jL8sMUOela9ldwJb_wVu7w.jpeg" alt="" width = "auto" height="350" />
<em>Meme created by the author using https://imgflip.com/</em>


## The solution

Although these two issues seem remarkably different on the surface, their root cause is actually the same. To put it in simple terms, each development project has a value and a cost. Business people typically know the value of things. However, in the field of AI, the cost is much more difficult to figure out in advance. It’s so difficult that it is challenging even for us, just think about how often you struggle to come up with what number to show in the scrum poker for a story. There are just too many unknowns in the development phase, especially when we aim for the bleeding edge. Still, we data scientists are the people with the most information and therefore the widest perspective on the cost of development so we have an obligation to share what we know. Sure, the business leadership might push back, so we may be forced to settle for a less complex solution.  **However, without this two-way communication link between the business and R&D, the business either will either stall (see issue 1) or will rush into a decision and choose to stake its fortune in something clearly valuable (but perhaps unattainable, see issue 2).**  So we, as data scientist, should not just wait for specifications to come. It is imperative that we forget waterfall-like requirement documents and begin such two-way conversations that will yield a product that is both feasible and valuable.

A related point is the notion of ‘just in time decisions’. Decisions are usually costly steps in development; when you decide to go for a neural network over a simple linear regression you make an important restriction on the possible solutions. Restrictions can turn out to be both positive and negative with time. Therefore,  it is crucial to postpone the introduction of restrictions until we have enough information  to predict their effect well. Usually, this is just before the moment when it gets “too late”. This, of course, results in an inherent feeling of uncertainty during the development process but knowing the underlying reasons should help to embrace it.

# Iterative development of analytics

## The challenge

Once the business decides to go for the development, another set of issues pops up. Iterative development as such is usually far from the researcher’s mind, resulting in conversations such as  _I either implement that deep convolutional network to classify the images or the problem will not be solved_  or  _Why would I bother implementing a baseline solution what it would perform like?_  In academic practice, it is often hard to argue with these points. The main focus is on novelty and not on invested time. While this motivation is the force pushing science beyond its boundaries every day, novelty in itself is not valuable. And the desperate search for novum in science can even be counterproductive (see the  [replication crisis](https://en.wikipedia.org/wiki/Replication_crisis)).

## The solution

In data science, the main focus is on creating value.  **Novelty is not a value per se, and even more importantly, value is not only the result of your work.** To better highlight this, let me give an example. In data science, we often face situations when we know that there would be some really good solution to a challenge… if only we had a little more labelled data. In at least one specific case, my team was exactly in this situation. We were telling sales/marketing that we can give the predictions they want if they give us more data. They were telling that when we give them more precise predictions only then they can get more data. Vicious cycle. For an underfunded project this could easily be the death sentence, the data scientists are complaining because of the lack of data, the sales is complaining because of lack of results. Complaining still consumes resources (cost) but no value is created so the project will be cancelled. In our case, luckily, we quickly came to see that value is best understood as an insight we could  _deliver today_, no insight that we could  _hypothetically gain_  given more data. So we solved part of the problem with a much simpler model and gave sales better (but far from the best possible) predictions. That, in turn, enabled them to bring us more data. So in the next iteration, we were able to go for the more complex model.

Time — whether it be time spent running a program, doing research or carrying out a development project — is of the essence in commercial data science. Maybe you are working on a well-funded project so running out of money does not affect you on the short term. Still, even if you are working on some fresh topic, probably tens or even hundreds of other companies around the world are working on the same topic. You don’t have to be first all the time but it is vital to keep up with the pace and be there at every checkpoint. This is because  product development is not a sprint but a marathon, so your development style has to be like the body of a marathon runner as well. Marathon is not about sudden big leaps in various directions; it is about maintaining a predictable, steady pace over a long time.

<img class="  wp-image-74 alignright" src="https://miro.medium.com/max/1000/1*qFaFHvw5s8kxGKoqczx56g.jpeg" alt="" width = "auto" height="350" />
<em>Meme created by the author using https://imgflip.com/</em>


# Testing and validation

## The challenge

You have a clear business need, you have a nice development flow, what can go wrong? You are trying to innovate in a structured way. Striving for predictability in cost and value could easily inhibit motivation for approaches which are less predictable. So it is crucial that we get feedback from our customers as often as possible so that we can learn what is of most value to them. That way we can steer development to more costly but also substantially more valuable directions. This feedback is operationalized in the form of testing. Testing for an AI-powered product is essential.  **Developing a full-fledged AI product takes a lot of time and money, so developing something that doesn’t directly address business needs is a huge waste.**

## The solution

Data science problems are often so complex that you have to abstract away from the real challenge to solve them. Here, I use the word  _abstract_ in the sense that we use data from the past that is (maybe somehow) filtered, (maybe somehow) labelled; we use that instead of future data that may come in an unselected, unfiltered, and unlabelled form. While this may sound trivial it’s also something that you have to keep in mind constantly. Forgetting this leads to discussions such as  _“but it showed a really good fit on my test set”._ Not once have I heard of a model going into production based on its performance in the abstract (training-validation-test set) case, without monitoring whether its performance generalizes to the concrete situation as well.

In many cases, data scientists opt for the ritual of looking at metrics on test sets and cross-validation scores and forget that generalization is much more important than those numbers. In fact, the numbers that you see (e.g. F1 score) is not the actual accuracy of your model. The F1 score that you see is only an estimate of the true, population-wide F1 score. Interestingly though, it is difficult to tell how far the sampled F1 score is from the population F1 score. Data scientists must rely on their experience and even their gut feeling for this. It is somewhat ironic that in a field where we are so obsessed with numbers there is still so much space for expert intuition.

It is bad practice, though, to not try to quantify these kinds of intuitions. Let me explain what I mean. When I see an F1 score of 0.98 I should start to worry because that number is simply too high for most real-world scenarios. It could be that I made a mistake and my test samples were present in the training set, or that there was a feature that, when available, exactly predicted the output class. Let’s say I checked both of these potential causes and noticed that the latter was the case so I calm down and submit the code.

What’s wrong here? I had a good intuition, investigated it, and made sure that the model is correct. True… but apart from this anecdote, there is no documentation of this exploration. This means that the next time someone else trains a new iteration model she has to go through the same discovery again (see relearning as a source of waste in the lean literature). So the ideal outcome of the investigation is that I split the test set into two parts: in one I have the definitive feature, in the other, I have examples without that feature. I maybe even set different F1 measure acceptance criteria for them. This way, I’m communicating my expert intuition for subsequent data scientists working on the product.

Thanks to  [Janos Divenyi](https://medium.com/@divenyijanos) and to  [Adam Csapo](https://scholar.google.com/citations?user=5WMeN5UAAAAJ&hl=en)  for their useful comments on the first version of this post.