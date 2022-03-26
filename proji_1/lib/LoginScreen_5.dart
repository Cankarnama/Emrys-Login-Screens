import 'package:flutter/material.dart';
import 'LoginScreen_2.dart';


class LoginScreen_5 extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) =>Scaffold(
    body: SafeArea(
      child:
      Container(
          decoration:  BoxDecoration(
            /*gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.0),
                  Colors.black.withOpacity(0.5),
                ],
              ),
              boxShadow:[BoxShadow(
                  color:Colors.black,
                     offset: Offset(5.0, 5.0,),
                    blurRadius: 10.0,
                  spreadRadius: .0}
              ),],
            */
            image: DecorationImage(

              image: AssetImage('images/vegg.jpg'),
              fit: BoxFit.cover,
              colorFilter:
              ColorFilter.mode(
                  Colors.black.withOpacity(0.5),
                  BlendMode.darken),





            ),

          ),

          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Row(
                    mainAxisAlignment: MainAxisAlignment. end,
                    children:<Widget>[  FlatButton(

                      child: const Text(

                        " Skip",

                        style: TextStyle(
                            fontSize: 18,

                            color: Colors.white

                        ),

                      ),

                      onPressed:(){},

                    ),
                    ]),

                Container(
                  margin: EdgeInsets.only(top:285,bottom:6.0 ),
                  child: const Text('Order groceries, beverages and essential',
                    textAlign: TextAlign.center,
                    style: TextStyle(

                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.00,
                      fontFamily: 'Pacifico',

                    ),

                  ),
                ),
                const Text('Order you groceries online '
                    'and get them delivered to you at your doorstep.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white54,


                    fontSize: 16.00,

                  ),),

                Container(

                  margin: EdgeInsets.symmetric(vertical:30.0,horizontal: 10 ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 120,right:120),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget>[
                          Container(
                            height: 8,
                            width: 8,
                            decoration: new BoxDecoration(
                              color: Colors.white70,
                              shape: BoxShape.circle,

                            ),
                          ),
                          Container(
                            height: 8,
                            width: 8,
                            decoration: new BoxDecoration(
                              color: Colors.white70,
                              shape: BoxShape.circle,


                            ),
                          ),
                          Container(
                            height: 8,
                            width: 8,
                            decoration: new BoxDecoration(
                              color: Colors.white70,
                              shape: BoxShape.circle,


                            ),
                          ),
                          Container(
                            height: 8,
                            width: 8,
                            decoration: new BoxDecoration(
                              color:Colors.red,
                              shape: BoxShape.circle,


                            ),
                          ),
                          Container(
                            height: 8,
                            width: 8,
                            decoration: new BoxDecoration(
                              color: Colors.white70,
                              shape: BoxShape.circle,


                            ),
                          ),

                        ]
                    ),
                  ),
                ),
                Expanded(

                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    width: 320 ,
                    child: FlatButton(
                      color: Colors.orange[800],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),

                      child: const Text(
                        'Next',
                        style: TextStyle(

                          color: Colors.white,
                          fontSize: 16,
                        ),

                      ),
                      //  minWidth:
                      onPressed: (
                          ){Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen_2()));},

                    ),

                  ),
                ),
              ])
      ),
    ),

  );
}
