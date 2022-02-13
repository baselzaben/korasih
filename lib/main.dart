import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'Color/HexColor.dart';
import 'GlobalVar.dart';
import 'UI/Login/Login_Body.dart';


Future<void> main() async {
  GestureBinding.instance?.resamplingEnabled = true;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cards Keeper',
    /*  theme: ThemeData(
        primarySwatch: Colors.black,
      ),*/
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
          ()=>
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login_Body())),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: HexColor(GlobalVar.blue1),
        body: SingleChildScrollView(
          child: Container(
          //  margin: EdgeInsets.only(top: 200),

            child: Column(children: [
              Center(
                child: new Image.asset('assets/debt.jpg'
                  ,height:MediaQuery.of(context).size.height,width:MediaQuery.of(context).size.width , ),
              ),

              Container(
                margin: EdgeInsets.only(top: 200),
                child: Text("",style: TextStyle(
                    /*color: HexColor(Globalvireables.basecolor)*/fontSize: 12
                ),),
              )

            ]

            ),
          ),
        ));

  }}
