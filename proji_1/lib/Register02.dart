import 'package:flutter/material.dart';
import 'Register01.dart';

  @override
  Widget build(BuildContext context) {
    return Container();
  }


class Register02 extends StatelessWidget {
  var items = ['Working a lot harder', 'Being a lot smarter'];
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
                          margin: EdgeInsets.only(top: 6),
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
                          margin: EdgeInsets.only(top: 4),
                          child: Text(
                            'Please fill in a few details below',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        Register01().ShortText('package'),
                        dropdown(hint: 'Select your packages'),
                        Register01().ShortText('Region'),
                        Register01().LongText(hint: 'eg.,Accra'),
                        Register01().ShortText('Branch'),
                        Register01().LongText(hint: 'eg.,Haatso'),
                        Register01().ShortText('Voucher Number'),
                        Register01().LongText(hint: 'eg.,10123123'),
                        Register01().ShortText('Sponsor Code'),
                        Register01().LongText(hint: 'eg.,1021921'),
                        Register01().ShortText('Placement Code'),
                        Register01().LongText(hint: 'eg.,1021921'),


                        
                        
                    ])))));
  Widget dropdown({required String hint}) =>

     TextField(
  decoration: InputDecoration(
  hintText: hint,
  hintStyle: const TextStyle(
  //   fontWeight: FontWeight.bold
  fontSize: 15),
  enabledBorder: const UnderlineInputBorder(
  borderSide: BorderSide(color: Colors.black12),
  ),
  contentPadding: const EdgeInsets.only(top: 20.0),
  suffixIcon: PopupMenuButton<String>(
  icon: Padding(
  padding: const EdgeInsets.all(0.0),
  child: Container(
  margin: EdgeInsets.all(10.0),
  child: const Icon(
  Icons.keyboard_arrow_down_sharp,
  color: Colors.grey,
  ),
  ),
  ),
  onSelected: (String value) {},
  itemBuilder: (BuildContext context) {
  return items
      .map<PopupMenuItem<String>>((String value) {
  return new PopupMenuItem(
  child: new Text(value), value: value);
  }).toList();
  },
  ),
  ),
  );
}
