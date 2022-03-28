import 'package:flutter/material.dart';

class Register01 extends StatelessWidget {
  @override
  Widget build(BuildContext context)=>Scaffold(
    appBar: AppBar(
      //elevation: 0,
      title: Text(
              'Step 1 of 2'),
           centerTitle: true,
      backgroundColor: Colors.white,


      leading: IconButton(
        icon:Icon(
            Icons.arrow_back,
        color: Colors.black,
        ),
            onPressed: (){},
      ),
      actions: [
        IconButton(
          icon:Icon(
            Icons.error,
            color: Colors.black,
          ),
          onPressed:(){},
        )
      ],

    ),

  body: SafeArea(
  child: Container(
      color: Colors. white,

 child: Column(

children:<Widget> [

     Container(
      margin: EdgeInsets.only(left: 10, top :20),
      child: Text(

          'Join thE Emry\'s Family',
           style: TextStyle(
             fontWeight: FontWeight.bold,
             fontSize: 22,
             color: Colors.black,
           ),
      ),
    ),
  ),

  Container(
    margin: EdgeInsets.only(left: 10, top :20),
    child: Text(
      'Pleas fill in a few details below',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: Colors.black,
      ),
    ),
  ),



],



 )

  )
  ));}

/*class LoginScreen_5 extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) =>Scaffold(
  body: SafeArea(
  child:

 */