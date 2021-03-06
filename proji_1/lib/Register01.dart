import 'package:flutter/material.dart';
import 'package:flag/flag.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'Register02.dart';
import 'LoginScreen_5.dart';
import 'OTP.dart';

class Register01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'STEP 1 OF 2',
            style: TextStyle(color: Colors.grey[600], fontSize: 15),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () { Navigator.push(context, MaterialPageRoute(
                builder: (context) => LoginScreen_5()));},
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.error,
                color: Colors.black,
              ),
              onPressed: () { showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: Text("Alert Dialog Box"),
                  content: Text("Please make sure to fill all text fields"),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Text("okay"),
                    ),
                  ],
                ),
              );
              },
            )
          ],
        ),
        floatingActionButton:  FloatingActionButton.small(
          backgroundColor: Colors.grey,
          child: const Icon(
              Icons.arrow_forward,
              color: Colors.white
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => OTP()));

          },
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: SafeArea(
                child: Container(
                    color: Colors.white,
                    child: ListView(
                     // crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top:15 ),
                          child: const Text(
                            'Join the Emrys Family',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.black,
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 6),
                          child: Text(
                            'Please fill in a few details below',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        ShortText("Name"),
                        LongText(hint: 'e.g., John Doe'),
                        ShortText("Email"),
                        LongText(hint: 'e.g., name@email.com'),
                        ShortText("Phone Number"),
                        // LongText(hint:'e.g., name@email.com'),
                        // ShortText("Phone Number"),
                        // FlatButton(
                        Container(
                          child: Row(children: <Widget>[
                            CountryCodePicker(
                              initialSelection: 'GB',
                              showCountryOnly: false,
                            ),


                            Flexible(
                              child: Container(
                                //padding: EdgeInsets.only(top: 20),

                                //   height: ,
                                child: const TextField(
                                    style: TextStyle(
                                      fontSize: 15,
                                      //letterSpacing: 5,

                                    ) ,
                                    textAlign: TextAlign.left,
                                    decoration: InputDecoration(
                                      hintText: '123xxxxxxxx',

                                      alignLabelWithHint: true,
                                    )
                                ),
                              ),
                            ),
                          ]),
                        ),

                         ShortText("Country"),


                       Register02().dropdown(hint: 'Select your country'),
                        ShortText2("Identification type (optional)"),
                        Register02().dropdown(hint: 'Select your ID type'),
                        ShortText2("ID number"),
                       LongText(hint: 'e.g., name@email.com'),




                      ],
                    )))),
        );
  Widget LongText({required String hint}) =>

      TextField(
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 18),
          hintText: hint,
          alignLabelWithHint: true,
          hintStyle: const TextStyle(
            //   fontWeight: FontWeight.bold
              fontSize: 15),
          enabledBorder: const UnderlineInputBorder(

            borderSide: BorderSide(
                width: 1,
                color: Colors.black26),

          ),
          //contentPadding: const EdgeInsets.only(top: 15.0),
        ),
        textInputAction: TextInputAction.done,
      );


  Widget ShortText(String shortext) =>
    Container(
      margin: EdgeInsets.only(top: 15),
      child: Row(children: <Widget>[
        Text(
          shortext,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black54,
          ),
        ),
        const Text(
          '*',
          style: TextStyle(
            fontSize: 12,
            color: Colors.red,
          ),
        )
      ]),
    );
  Widget ShortText2(String shortext) =>
      Container(
        margin: EdgeInsets.only(top: 15),
        child: Row(children: <Widget>[
          Text(
            shortext,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black54,
            ),
          ),

        ]),
      );
}


/*class LoginScreen_5 extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) =>Scaffold(
  body: SafeArea(
  child:

 */
