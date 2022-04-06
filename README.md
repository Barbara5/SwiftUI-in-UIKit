# SwiftUI in UIKit
> This is a simple project that shows how you can integrate a SwiftUIView into an existing UIKit project.  
> You can find my full article about the integration of both frameworks [here](https://medium.com/@barbarabeatrice95/swiftui-or-uikit-did-you-mean-swiftuikit-6eeb115c5e59).

## Table of Contents
* [General Info](#general-information)
* [Technologies Used](#technologies-used)
* [Embed a SwiftUI view in UIKit](#embed-a-swiftui-view-in-uikit)
* [Contact](#contact)

## General Information
I started this project in order to understand how SwiftUI and UIKit can be integrated together to get the best out of both of them. 
I made an animation with SwiftUI and then I embedded it into a UIKit project.
This is actually just one of two projects that I worked on, you can find the "UIKit in SwiftUI" part [here](https://github.com/BarbaraBeatrice/UIKit-in-SwiftUI).

## Technologies Used
- macOS - 12.1
- Xcode - 13.3

## Embed a SwiftUI view in UIKit
First of all, create a SwiftUI view inside the project (I created a simple custom loading animation).

![gif animazione](https://user-images.githubusercontent.com/61754424/162015048-2db2b9da-3f95-40ed-bdc1-4d8b4634ceac.gif)


In order to bind it with the existing project, you'll need to place it inside a ContainerView, which you can add to the storyboard from the library.
![image](https://user-images.githubusercontent.com/61754424/161979063-2c600872-0d55-4f0f-b527-f3c547bb7f91.png)


You may have noticed that along with the ContainerView, a ViewController has also popped up, which in this case we'll remove because it needs to be replaced with the UIHostingController.
![image](https://user-images.githubusercontent.com/61754424/161979213-06b3412f-458b-40c7-aadc-a57ada4480b8.png)


To do this, add a UIHostingController from the library, then connect the ContainerView to it with control-drag and then select "embed" from the menu that opens.
![image](https://user-images.githubusercontent.com/61754424/161979263-732304f7-c4d6-4f39-aa82-aefc78b48d41.png)
![image](https://user-images.githubusercontent.com/61754424/161979341-37fe7357-b0b7-4ae6-86ba-208e1918c223.png)


Now open the assistant and, first of all, import SwiftUI into the ViewController. 
![image](https://user-images.githubusercontent.com/61754424/161979424-87980cb8-2b58-4140-a0d1-1da71caeb7da.png)


Then control-drag the segue you just created in the view controller and give it a name.
![image](https://user-images.githubusercontent.com/61754424/161979493-2ebae202-1da3-4008-9f72-e0754bc7585a.png)


Use auto-completion to help you and lastly enter the name of your SwiftUIView as the root view.
![image](https://user-images.githubusercontent.com/61754424/161979553-2c2b05cc-9ff2-4921-9240-1dec1f2a383c.png)



## Contact
Created by [Barbara Beatrice](https://github.com/BarbaraBeatrice)

