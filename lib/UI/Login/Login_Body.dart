import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'dart:typed_data';

import 'package:korasih/Color/HexColor.dart';
import 'package:korasih/GlobalVar.dart';

class Login_Body extends StatefulWidget {

  @override
  _Login_Body createState() => _Login_Body();

}

class _Login_Body extends State<Login_Body>   {
  TextEditingController phonecontroler = TextEditingController();

  @override
  void initState() {
    super.initState();
  }
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
  //  _refreshJournals(searchcontroler.text);

    return Scaffold(
      backgroundColor: HexColor(GlobalVar.white),
body: SingleChildScrollView(child:
Container(
  color: HexColor(GlobalVar.white),
  child:   Column(

    children: [

      Container(

       color: HexColor(GlobalVar.white),



        //  margin: EdgeInsets.only(top: 200),

        child: Column(children: [

          Container(

            child: new Image.asset('assets/wlogo.png'

              ,height:300,width:300 , ),

          ),







          Container(

            margin: const EdgeInsets.only(top: 25, left: 20, right: 20),



            //padding: EdgeInsets.fromLTRB(10,2,10,2),

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color:HexColor(GlobalVar.blue1))
            ),

            child: TextField(



              decoration: InputDecoration(

                prefixIcon: Icon(Icons.drive_file_rename_outline),

                border: InputBorder.none,

                labelText: "Password",

              ),

              //    controller: controller,

            ),

          ),

        Container(
            margin: const EdgeInsets.only(top: 25, left: 20, right: 20),
           //padding: EdgeInsets.fromLTRB(10,2,10,2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color:HexColor(GlobalVar.blue1))
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.drive_file_rename_outline),
                border: InputBorder.none,
                labelText: "Password",
              ),
          //    controller: controller,
            ),
          )









        ]



        ),

      ),



    ],





  ),
)),




    );
  }


}