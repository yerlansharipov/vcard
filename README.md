# vCard
<img align="right" src=https://github.com/yerlansharipov/vcard/blob/master/meal3/back.png width=300/>
Don't you tired of annoying misspelling and mishearing when you are trying to share your contact with a new friend? 
<br />
<br />
vCard is a prototype of application for sharing your information fast and easy. Information might include anything from your name to social media account(facebook, instagram and etc).
<br />
<br />
Provided image has a test contact with name, surname and email. So, go ahead and try to scan

## How to Use
- Enter your personal information
- Press "Generate vcard" button
- Show it to your new friend to scant QR code (Every native camera app has capability of reading QR codes)
- QR code contains infromation in .vcf format. Therefore it will be imported directly to contacts
- If you reboot the app previous information will be saved. Therefore, initial QR code will be generated on launch

## Lessons Learned
- Programming in Swift
- Create event triggered actions
- Create simple user interface

## Future plans
- add direct import of My Card directly from iphone. So, user does not need to fill initial information
- add social networks links
- allow user to share personal information selectively. For instance, user might want to share only instagram account and name. 


<br />
<br />
<br />
<br />

# Camparision of React vs iOS and Android application environments

## React 
Programming Language: JavaScript JSX
<br />
React provides a framework to create cross-platform mobile applicaitons. It was created by Facebook and gained popularity. Popular mobile application such as Facebook, Instagram, Uber were rewritten in React Ntaive.
<br />
React Native enables a single JavaScript codebase for 2 different platforms. This means that it is not just easier to maintain the app by having the same development process for both platforms and reusing the same code, but it also requires less resources, because there is no need for separate iOS and Android teams.
<br />
Using React Native will greatly speed up the development and maintenance processes.


## iOS and Android
Programming Language for iOS: Objective-C, Swift
Programming Language for Android: Java
<br />
While React Native can handle a large amount of cross-platform use cases, it is impossible for it to cover all the native mobile ground. This means that there will always be a need for native modules.
<br />
If the team uses a cloud service for Continuous Integration such as Azure, native linking problems might arise, because XCode and Android Studio on the cloud might have a different version and configuration than your local one, so even if everything works well on your machine, it might not build remotely and the developer will need to do more fine-tuning in order for the linking to work on both sides.
