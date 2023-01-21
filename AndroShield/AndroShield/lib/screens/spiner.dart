import 'package:AndroShield/screens/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../reusable_widgets/reusable_widget.dart';

class NoVirus extends StatelessWidget {
  const NoVirus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body:Column(
        children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Padding(
            padding: EdgeInsets.fromLTRB(0,200.0,0,0),
            child: Icon(Icons.check_circle,
            color: Colors.white,
            size: 200.0,
            ),
          ),
        ],
      ),
            SizedBox(height: 30),
            const SizedBox(
            child: Text('Safe!',
                        style: TextStyle(
                          fontSize: 50.0,
                          color: Colors.white,
                        ),
                    ),
                height: 50.0,
            ),
          const SizedBox(height: 130,),


          UIButton(context,'OK',(){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Upload()));}),
      ],
      ),
    );
  }
}





class Virus extends StatelessWidget {
  const Virus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.redAccent,
      body:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(0,200.0,0,0),
                child: Icon(Icons.close,
                  color: Colors.white,
                  size: 200.0,
                ),
              ),
            ],
          ),

          const SizedBox(
            child: Text('Unsafe!',
              style: TextStyle(
                fontSize: 50.0,
                color: Colors.white,
              ),
            ),
            height: 50.0,
          ),
          SizedBox(height: 130),

          UIButton(context,'OK',(){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Upload()));}),
        ],
      ),
    );
  }
}




class Error extends StatelessWidget {
  const Error({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.yellow,
      body:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(0,200.0,0,0),
                child: Icon(Icons.error_outlined,
                  color: Colors.white,
                  size: 200.0,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const SizedBox(
            child: Text('There was some error uploading the file, please upload again',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            height: 50.0,
          ),
          const SizedBox(height: 130,),


          UIButton(context,'Try Again',(){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Upload()));}),
        ],
      ),
    );
  }
}

class Load extends StatefulWidget {
  const Load({Key? key}) : super(key: key);

  @override
  State<Load> createState() => _LoadState();
}

class _LoadState extends State<Load> {

  void waittime(){
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Error()));
    });
  }
  @override
  void initState(){
    super.initState();
    waittime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.cyan[600],
        body:
            Column(
              children: const [
                SizedBox(height: 180,),

        SizedBox(
          // width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,

          child: Center(
            child: SpinKitCircle(
              color: Colors.white,
              size: 200.0,
            ),
            ),

            ),
                SizedBox(height: 30,),
                Text('Analyzing...',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                )
            ]
        )
    );
  }
}

