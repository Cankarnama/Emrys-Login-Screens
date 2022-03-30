import 'package:flutter/material.dart';
import 'Register01.dart';

class Register02 extends StatelessWidget {
  var items = ['Working a lot harder', 'Being a lot smarter'] ;
  @override
  Widget build(BuildContext context) => Scaffold(
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
          onPressed: () {},
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
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: const Text(
                            'Provide Platform details',
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
                        TextField(

                          decoration: InputDecoration(
                            suffixIcon: PopupMenuButton<String>(
                              icon: const Icon(Icons.arrow_drop_down),
                              onSelected: (String value) {

                              },
                              itemBuilder: (BuildContext context) {
                                return items
                                    .map<PopupMenuItem<String>>((String value) {
                                  return new PopupMenuItem(
                                      child: new Text(value), value: value);
                                }).toList();
                              },
                            ),
                          ),
                        )
                      ])))));
}
