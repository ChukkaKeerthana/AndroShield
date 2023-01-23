# AndroShield
<a name="readme-top"></a>
<!-- PROJECT LOGO -->
<br />
<div align="center">
  <!--
  <a href="https://github.com/othneildrew/Best-README-Template">
    <img src="images/android_logo.png" alt="Logo" width="80" height="80">
  </a>
-->
![Shield](https://user-images.githubusercontent.com/113005012/213994303-7a66162e-dfd1-4cf3-a71e-11cae4d900ca.jpg)
  <h3 align="center">Andro-Shield</h3>

  <p align="center">
    A Simple Flutter app that lets users upload and check if an APK is safe to install or not.
    <br />
    <a href="#demo-video"><strong>View Demo»</strong></a>
    <br />
  </p>
</div>


<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#installation">Installation</a>
    </li>
    <li><a href="#futuregoals">Future Goals</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>


## About The Project

Before going with the project, lets understand what an APK is? It is an file format that android uses to install apps. In this modern world, many of us install new
apps in our mobile to make life easier, but there are few apps that are malicious which may steal the user's precious information or frustates the user by displaying many advertisements and slowing down the network, etc.

There are several types of malwares like:

* <b>VORMS</b>: replicate themselves on the system and slows down network
* <b>SPYWARE</b>: collects information and sends to hacker
* <b>TROJAN HORSE</b> : does malicious operations under the appearance of a desired operation
* <b>RANSOMWARE</b>: a type of encryption grasps control of system, The user has to pay a ransom (price) to the criminals to retrieve data
* <b>KEYLOGGERS</b>:  records everything the user types on his/her computer
* <b>ROOTKITS</b>: modifies OS files to create backdoors,... and the list goes on...

This project helps the users as a defense system that works to detect malware samples before they have a chance to infect a vivtim's mobile.

Flask API:  https://github.com/naveenvarma600/MalwareAPK

Keras Model: https://github.com/naveenvarma600/DL-model-for-Malicious-APK
<p align="right">(<a href="#readme-top">back to top</a>)</p>



## Built With

This section lists the major frameworks/libraries used to bootstrap this project.


* [![Flask][Flask]][Flask-url]
* [![Dart][Dart]][Dart-url]
* [![Flutter][Flutter]][Flutter-url]
* [![Keras][Keras]][Keras-url]
* [![Sklearn][Sklearn]][Sklearn-url]
* [![Heroku][Heroku]][Heroku-url]



<p align="right">(<a href="#readme-top">back to top</a>)</p>



## Installation

_Below are the instructions on how to run the app._

1. Clone the mentioned repo which consists of Flask API. (https://github.com/naveenvarma600/MalwareAPK)
   ```sh
   git clone https://github.com/naveenvarma600/MalwareAPK
   ```
2. Host the Flask API on heroku or any other cloud service
3. Clone the current repository and then do the changes accordingly as mentioned below
   ```sh
   git clone https://github.com/naveenvarma600/AndroShield.git
   ```
4. In the   Malicious_android_app\lib\start_screen.dart file   , replace your hosted FLASK API url.
   ```sh
   Uri.parse('Your API URL here'));
   ```
5. Finally run the Malicious_android_app\main.dart file and you can see the output in the connected emulator.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



## FutureGoals


- [ ] The Keras Model we are using now, does binary classification only, you can also work on multi-label classification that predicts different malware labels.
- [ ] We are currently using the permissions dataset, we can also predict the malware using network traffic data of APK file, please refer a href="#acknowledgments">Acknowledgement Section </a> to know more about this.
- [ ] Try adding more front-end features like switching between light and dark themes, About Us and Contact Us pages.
- [ ] Multi-language Support

Always make sure to remove unnecessary dependencies.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## Contact

Naveen Varma - [@LinkedIn](https://www.linkedin.com/in/naveenvarma600/) - naveenvarma600@gmail.com

Project Link: [https://github.com/naveenvarma600/AndroShield](https://github.com/naveenvarma600/AndroShield)



<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

I have listed these resources which I found helpful and also included a few of my favorites to kick things off!

* [in-depth FLask Guide](https://flask.palletsprojects.com/en/2.0.x/api/)
* [Keras Sequential Model](https://keras.io/guides/sequential_model/)
* [BackPropogation Algorithm](https://machinelearningmastery.com/implement-backpropagation-algorithm-scratch-python/)
* [Flutter's Scaffold class](https://api.flutter.dev/flutter/material/Scaffold-class.html)
* [Reference to common problems while writing Flutter apps](https://docs.flutter.dev/cookbook)
* [Deploying Python apps on Heroku](https://devcenter.heroku.com/categories/python-support)


 ( Below resources help you to get started with the network-traffic data based malware detection )
* [Dataset for detecting malware based on Network Traffic data](https://www.unb.ca/cic/datasets/invesandmal2019.html)
* [AndroGuard](https://github.com/androguard/androguard)
* [AndroGaurd's CICFlowmeter](https://github.com/datthinh1801/cicflowmeter)
* [WireShark](https://www.wireshark.org/#learnWS)


<p align="right">(<a href="#readme-top">back to top</a>)</p>







<div id="demo-video">

## Demo Video

<video src="https://user-images.githubusercontent.com/72015821/204139131-dd81d44d-0a5e-4c20-b4dd-e6eca5bcd430.mp4"></video>
</div>



<p align="right">(<a href="#readme-top">back to top</a>)</p>





<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[Flask]: https://img.shields.io/badge/flask-000000?style=for-the-badge&logo=flask&logoColor=white
[Flask-url]: https://palletsprojects.com/p/flask/
[Dart]: https://img.shields.io/badge/Dart-20232A?style=for-the-badge&logo=dart&logoColor=61DAFB
[Dart-url]: https://dart.dev/
[Flutter]: https://img.shields.io/badge/Flutter-35495E?style=for-the-badge&logo=flutter&logoColor=4FC08D
[Flutter-url]: https://flutter.dev/
[Keras]: https://img.shields.io/badge/Keras-DD0031?style=for-the-badge&logo=keras&logoColor=white
[Keras-url]: https://keras.io/
[Sklearn]: https://img.shields.io/badge/Sklearn-0769AD?style=for-the-badge&logo=scikitlearn&logoColor=white
[Sklearn-url]: https://scikit-learn.org/stable/index.html
[Heroku]: https://img.shields.io/badge/Heroku-563D7C?style=for-the-badge&logo=heroku&logoColor=white
[Heroku-url]: https://dashboard.heroku.com/apps
