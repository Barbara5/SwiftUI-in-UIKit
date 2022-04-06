# SwiftUI in UIKit
> This is a simple project that shows how you can integrate a SwiftUIView into an existing UIKit project.  
> You can find my full article about the integration of both frameworks [here](https://medium.com/@barbarabeatrice95/swiftui-or-uikit-did-you-mean-swiftuikit-6eeb115c5e59).

## Table of Contents
* [General Info](#general-information)
* [Technologies Used](#technologies-used)
* [Embed a SwiftUI view in UIKit](#embed-a-SwiftUI-view-in-UIKit)
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
https://user-images.githubusercontent.com/61754424/161975828-5eb080d7-1c7c-4d90-a28e-f68305a15bbd.mp4

In order to bound it with the existing project, you'll need to place it inside a ContainerView, which you can add to the storyboard from the library.
![Schermata 2022-03-25 alle 16.56.32.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/d6cf4d7b-82ff-4342-959a-c4ea35119669/Schermata_2022-03-25_alle_16.56.32.png)

You may have noticed that along with the ContainerView, a ViewController has also popped up, which in this case we'll remove because it needs to be replaced with the UIHostingController.
![Schermata 2022-03-25 alle 16.58.26.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/66f7d89a-c566-4b6b-bec8-e19ff05abdc4/Schermata_2022-03-25_alle_16.58.26.png)

To do this, add a UIHostingController from the library, then connect the ContainerView to it with control-drag and then select "embed" from the menu that opens.
![Schermata 2022-03-25 alle 16.58.44.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/13401087-b085-43b1-a3e2-c615694d0dac/Schermata_2022-03-25_alle_16.58.44.png)

![Schermata 2022-03-25 alle 16.59.05.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/9a2aa186-af32-4881-a7bb-13263a2a4171/Schermata_2022-03-25_alle_16.59.05.png)

Now open the assistant and, first of all, import SwiftUI into the ViewController. 
![Schermata 2022-03-25 alle 17.00.18.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/ff6ca384-95b8-47bd-8e55-f45e85a6967a/Schermata_2022-03-25_alle_17.00.18.png)

Then control-drag the segue you just created in the view controller and give it a name.
![Schermata 2022-03-25 alle 17.02.57.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/7f4f21aa-ae4b-4d44-ac01-2e14343ea3dc/Schermata_2022-03-25_alle_17.02.57.png)

Use auto-completion to help you and lastly enter the name of your SwiftUIView as the root view.
![Schermata 2022-03-25 alle 17.07.26.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/5abd0e4c-3608-4df5-818c-c60a0ebb5bb4/Schermata_2022-03-25_alle_17.07.26.png)



## Contact
Created by [Barbara Beatrice](https://github.com/BarbaraBeatrice)

