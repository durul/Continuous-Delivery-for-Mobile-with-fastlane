


# Continuous Delivery for Mobile with Fastlane
This is the code repository for [Continuous Delivery for Mobile with Fastlane](https://www.packtpub.com/application-development/continuous-delivery-mobile-fastlane?utm_source=github&utm_medium=repository&utm_campaign=9781788398510), published by [Packt](https://www.packtpub.com/?utm_source=github). It contains all the supporting project files necessary to work through the book from start to finish.
## About the Book
We already implement regression testing in an automated manner, through continuous
integration, so there should be a way of being able to automate the process of packaging our
apps, pushing them to TestFlight or the App Store, and dealing with provisioning our apps.
Introducing fastlane...
## Instructions and Navigation
All of the code is organized into folders. Each folder starts with a number followed by the application name. For example, Chapter02.



The code will look like the following:
```
export_options(
 method: "ad-hoc",
 provisioningProfiles: {
 "com.doronkatz.firefox": "Provisioning Profile Name"
 },
 manifest: {
 appURL: "https://yourapp.com/yourapp.ipa",
 },
 thinning: "<thin-for-all-variants>"
)
```

You are encouraged to follow the examples sequentially, from Chapter 1, Introduction to
fastlane and Continuous Delivery, to the final chapter, using the sample project and code.
The Chapter 2, Setting Up fastlane and Our Sample Project, covers setting up your
environment, installing fastlane, and any other prerequisite tools.
You will also need to have an active Apple Developer account, which you can get from
developer.apple.com.

## Related Products
* [Reactive Programming in Kotlin](https://www.packtpub.com/application-development/reactive-programming-kotlin?utm_source=github&utm_medium=repository&utm_campaign=9781788473026)

* [Kali Linux 2017 Wireless Penetration Testing for Beginners [Video]](https://www.packtpub.com/networking-and-servers/kali-linux-2017-wireless-penetration-testing-beginners-video?utm_source=github&utm_medium=repository&utm_campaign=9781788394055)

* [Advanced Applied SQL for Business Intelligence and Analytics [Video]](https://www.packtpub.com/application-development/advanced-applied-sql-business-intelligence-and-analytics-video?utm_source=github&utm_medium=repository&utm_campaign=9781788470803)
### Download a free PDF

 <i>If you have already purchased a print or Kindle version of this book, you can get a DRM-free PDF version at no cost.<br>Simply click on the link to claim your free PDF.</i>
<p align="center"> <a href="https://packt.link/free-ebook/9781788398510">https://packt.link/free-ebook/9781788398510 </a> </p>