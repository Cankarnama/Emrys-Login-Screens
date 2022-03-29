import 'package:flutter/material.dart';
import 'package:flag/flag.dart';
import 'package:country_code_picker/country_code_picker.dart';

class Register01 extends StatelessWidget {


  @override
  Widget build(BuildContext context)=>Scaffold(
    appBar: AppBar(
      elevation: 0,
      title: Text(
              'STEP 1 OF 2',
      style: TextStyle(
        color: Colors.grey[600],
            fontSize: 15
      ), ),
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

  body: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 18),
    child: SafeArea(
    child: Container(
        color: Colors. white,

 child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
children:<Widget> [

       Container(
        margin: EdgeInsets.only( top :20),
        child: Text(

            'Join the Emrys Family',
             style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 22,
               color: Colors.black,
             ),
        ),
      ),

    Container(
      margin: EdgeInsets.only( top :6),
      child: Text(
        'Pleas fill in a few details below',
        style: TextStyle(

          fontSize: 18,
          color: Colors.grey[600],
        ),
      ),
    ),
   ShortText("Name"),
 LongText(hint:'e.g., John Doe'),
  ShortText("Email"),
    LongText(hint:'e.g., name@email.com'),
  ShortText("Phone Number"),
 // LongText(hint:'e.g., name@email.com'),
 // ShortText("Phone Number"),
     // FlatButton(
Container(


      //decoration:BoxDecoration(
       // border:
       // Border.all(),
       // borderRadius: BorderRadius.circular(50)

        //color:Colors. blue,
     // ),

    child:
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
         // shape: RoundedRectangleBorder(
         //     borderRadius: BorderRadius.circular(4)),
         // color: Colors.black12,
        // onPressed: (){},

       CountryCodePicker(
        initialSelection:'GB' ,
        showCountryOnly: true,
      ),



          LongText(hint:'e.g., name@email.com'),
        ]


    ),




),
  ShortText("Phone Number"),
  LongText(hint:'e.g., name@email.com'),
  ShortText("Phone Number"),
  LongText(hint:'e.g., name@email.com'),
    ],
  )




 )

    )

    ),
  );


  Widget LongText({required String hint}) =>
      TextField(
        textAlign: TextAlign.left,
        decoration: InputDecoration(
            hintText: hint,
          hintStyle: TextStyle(
           //   fontWeight: FontWeight.bold
            fontSize: 18
          ),
          enabledBorder:  UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black12),
          ),
          contentPadding: const EdgeInsets. only(top: 15.0),
             ),
        textInputAction: TextInputAction.done,
      );}

      Widget ShortText(String shortext)=>
           Container(
             margin: EdgeInsets.only( top :18),
             child: Row(
children : <Widget>[
Text(
   shortext,

style: TextStyle(
fontSize: 12,
color: Colors.black,
),
),
Text(
'*',
style: TextStyle(
fontSize: 12,
color: Colors.red,
),
)
]
),
           );

/*class LoginScreen_5 extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) =>Scaffold(
  body: SafeArea(
  child:

 */