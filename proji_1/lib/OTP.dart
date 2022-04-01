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
          body: SafeArea(
              child: Container(
                  color: Colors.white,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 18),
                         child: Column(
                           children: [


                          Container(
                            margin: EdgeInsets.only(top: 15),
                            child: const Text(
                              'Your\'e almost there! ',

                              textAlign:
                                  TextAlign.left,

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
                              // GridView(gridDelegate:)


                            ],
                            ),
                          ),
                          SizedBox(height: 50,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(

                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [


                                Flexible(
                                  child: Container(
                                   //padding: EdgeInsets.only(top: 20),
                               //   height: ,
                                    child: TextField(
                                      style: TextStyle(
                                        fontSize: 28,
                                        letterSpacing: 5,

                                      ) ,
                                    textAlign: TextAlign.center,
                                    decoration: const InputDecoration(

                                          contentPadding: EdgeInsets.only(top: 18),
                                      hintText: '4450',

                                      alignLabelWithHint: true,
                                    )
                                    ),
                                  ),
                                ),
                                FloatingActionButton.small(
                                  backgroundColor: Colors. green,
                                  child: const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,

                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => OTP()));
                                  },
                                ),
                              ],
                            ),
                          ),
]



),
                       ),
                        Flexible(


                          child: Container(


                            height: 300,
                            color: Colors.amber,



                          ),
                        ),

                      ]
                  )
              )
          )
      );
}