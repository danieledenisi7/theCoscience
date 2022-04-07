# **Introduction**

Daniele’s Conscience born as a collection of all the sentences that I’m told quite often, from a large amount of people, everyday. 

I wanted to collect them in order to have a sort of digital conscience that always displays me these sentences, a sort of encourage in doing everything better in my life, or just for fun.

The App is just a collection of sentences, and the widget displays a randomic one among them. I made the widget configurable so that you can choose to hide the emoji.

## **About Widgets**

The widget display one randomic sentence among the ones contained in the SentenceProvider.swift file, that has already the related emoji and background color. It is also configurable, in fact you can choose to hide the emoji, and display only the sentence, but we'll see this later, now I'll show you how to implement Widgets in your own projects.

For creating the widget I used the Apple's WidgetKit framework, the implementation of widgets is really easy, you just need to go in 
``File -> New -> Target``

<img width="573" alt="Schermata 2022-04-07 alle 13 12 44" src="https://user-images.githubusercontent.com/92307268/162187362-0b11acdd-9860-4d7f-9e97-47e1d1dcd343.png">

And then click on ``Widget Extension``

<img width="733" alt="Schermata 2022-04-07 alle 13 13 12" src="https://user-images.githubusercontent.com/92307268/162187761-446dde79-7c7e-492a-b297-f9649e443dce.png">

At this point your widget is already initialized and working, but only display the current date, but most important it is a static framework, it means that only the developer choose what display in the widget, and the user cannot customize it. In my case it is a bit different, I created a configurable widget. In fact after click on the Widget Extension button in the image above, you'll find this view:

<img width="733" alt="Schermata 2022-04-07 alle 22 26 52" src="https://user-images.githubusercontent.com/92307268/162290179-1ff3e1ea-2f45-44fa-b56d-840d4f5f192f.png">

At this point, selecting ``Include Configuration Intent``, allows you to create a configurable Widget, in fact initialize already all the function you need, but REMEMBER: **if you don't need a configurable widget, don't select it!**

## **theCoscience Widget**

So this is the result:

![IMG_3945](https://user-images.githubusercontent.com/92307268/162184684-0a865145-3d0b-4d2e-ac4a-c284be49646c.jpg)

As already said, I included for this widget the Configuration Intent, this allowed me to do this:

![IMG_3952](https://user-images.githubusercontent.com/92307268/162321664-4612b53a-d682-41ab-9651-898510710631.jpg)

Switching on this toggle you can choose to display or hide the emoji. Obviously this is only an example of what you can do with the Intents, but is a good starting point in order to understand how to handle this kind of data. You can use this app as basis for your project maybe trying to customize it a bit and see what you can do with intents. I will also add comments in the code so that you can easly go through them and understanding the behaviour of WidgetKit.
