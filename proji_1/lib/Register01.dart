import 'package:flutter/material.dart';

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
   ShortText("howdy"),
 LongText(hint:'hello every bodayy'),
  ShortText("howdy"),
    LongText(hint:'hello every bodayy'),

],


 )

    )

    ),
  ));
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
             margin: EdgeInsets.only( top :12),
             child: Row(
children :const <Widget>[
Text(
'Name',
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