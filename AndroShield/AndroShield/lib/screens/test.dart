import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:AndroShield/screens/spiner.dart';
import 'package:flutter/material.dart';
import '../reusable_widgets/reusable_widget.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan[600],
      width: MediaQuery
          .of(context)
          .size
          .width,
      height: MediaQuery
          .of(context)
          .size
          .height,
      child: Center(
        child: Column(
          children: [

            const SizedBox(height: 200,),
        ClipRRect(
        borderRadius: BorderRadius.circular(20.0), //add border radius
          child: Image.asset(
            "assets/images/Shield.png",
            height: 200.0,
            width: 200.0,
            fit:BoxFit.cover,
          )
            ),

            const SizedBox(height: 20,),

            const DefaultTextStyle(style: TextStyle(fontSize: 40, color: Color.fromARGB(255, 255, 255, 255)), child: Text('AndroShield')),

            const SizedBox(height: 50,),
            const SizedBox(
              width: 300.0,
              child: DefaultTextStyle(
            style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            child: Text(
            'Prepare and Prevent instead of Repair and Repent',

            textAlign: TextAlign.center,
            ),
            ),),

            const SizedBox(height: 30,),
            UIButton(context,'Get Started',(){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Upload()));}),
            const SizedBox(height: 40,),
            const DefaultTextStyle(style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 255, 255, 255)), child: Text('STAY SAFE !!!')),

          ],
        ),
      ),
    );
  }
}

//
// // Home page

class Upload extends StatefulWidget {
  const Upload({Key? key,}) : super(key: key);

  @override
  _UploadState createState() => _UploadState();
}


// Navebar page

class _UploadState extends State<Upload> {

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Padding(
              padding: const EdgeInsets.only(right: 130.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ClipRRect(
          borderRadius: BorderRadius.circular(5.0), //add border radius
          child: Image.asset(
            "assets/images/Shield.png",
            height: 50.0,
            width: 50.0,
            fit:BoxFit.cover,
          ),
          ),const SizedBox(width: 10.0,),

            const Text('AndroShield',
              style: TextStyle(
                color: Colors.cyan,
                fontSize: 30.0,
              ),),
            Container(),
          ]
          ))),

      body: const UploadBody(),
    );
  }
}


// upload page

class UploadBody extends StatefulWidget {
  const UploadBody({Key? key}) : super(key: key);

  @override
  State<UploadBody> createState() => _UploadBodyState();
}

class _UploadBodyState extends State<UploadBody> {
  @override
  bool loading = false;
  Widget build(BuildContext context) {
    return loading ? Load() :  Scaffold(

      backgroundColor: Colors.cyan[600],
      body:
        SingleChildScrollView(child:
        Column (
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const SizedBox(height: 200),
              SizedBox(width: 410, height: 400,
                child: Column(
                  children: [
                      const SizedBox(height: 20.0,),
                Container(
                  margin: const EdgeInsets.only(right: 70.0),
                    child: IconButton(onPressed: ()  {
                    }, icon: const Icon(Icons.cloud_upload_outlined,size: 100)),

                  ),

                    const SizedBox(height: 70,),
                    UIButton(context,'Upload apk',()async {
                      padding: const EdgeInsets.all(0.0);
                      var picked = await FilePicker.platform.pickFiles(
                          allowedExtensions: ['apk'],
                          withReadStream: true,
                          type: FileType.custom);
                      if (picked != null) {
                        try {
                          http.MultipartRequest request =
                          http.MultipartRequest(
                              'POST',
                              Uri.parse(
                                  'https://malicious-apk.herokuapp.com/'));
                          final stream = picked.files.first.readStream!;
                          request.files.add(http.MultipartFile(
                            'file',
                            stream,
                            picked.files.first.size,
                            filename: picked.files.first.name,
                          ));
                          setState(() => loading = true);
                          http.StreamedResponse response =
                          await request.send();
                          setState(() => loading = false);
                          if (response.statusCode == 200) {
                            var json = await response.stream.bytesToString();
                            // print(json);
                            var list = jsonDecode(json);
                            var name1 = picked.files.first.name.toString();
                            if (list.toString() == "false") {
                              showDialog(
                                context: context,
                                builder: (ctx) => const NoVirus(),
                              );
                            } else {
                              showDialog(
                                context: context,
                                builder: (ctx) => const Virus(),
                              );
                            }
                          } else {
                            setState(() => loading = false);
                            showDialog(
                              context: context,
                              builder: (ctx) => const Error(),
                            );
                          }
                        } catch (e) {
                          setState(() => loading = false);
                          showDialog(
                            context: context,
                            builder: (ctx) => const Error(),
                          );
                        }
                      }
                    },),
                ],
                ),
              ),
            ],
      ),
    ),
    );
  }
}