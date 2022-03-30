import 'package:flutter/material.dart';
import 'package:flag/flag.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'Register02.dart';
import 'LoginScreen_2.dart';

class OTP extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
          appBar: AppBar(
            elevation: 0,

            centerTitle: true,
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Register02()));},
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.error,
                  color: Colors.black,
                ),
                onPressed: () {},
              )
            ],
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
                              margin: EdgeInsets.only(top: 15),
                              child: const Text(
                                'Your\'e almost there! ',
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
                                'You only have to enter an OTP code we sent via SMS to your registered phone '
                                'number +233203620462',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top:20)
                              ,

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:  [
                                  const Text(
                                    '4450 ',
                                    style: TextStyle(
                                      letterSpacing: 5,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top:10),
                                    child: const Text(
                                      '00:48 ',
                                      style: TextStyle(
                                    //    letterSpacing: ,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  GridView(gridDelegate: gridDelegate)
                                ],
                              ),

                            ),
                          ]
                      )
                  )
              )
          )
      );
}