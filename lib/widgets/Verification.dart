import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:groceryapp/custom_widget/custom_button.dart';
import 'package:groceryapp/custom_widget/phone_number.dart';

class Verification extends StatelessWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Resend Code',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.bold,
                color: Color(0xff53B175),
              ),
            ),
            FloatingActionButton(
              backgroundColor: Color(0xff53B175),
              onPressed: () {},
              child: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/Number-background.png'),
              )),
              child: SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Container(
                          alignment: Alignment.topLeft,
                          width: double.infinity,
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 18,
                            color: Color(0xff181725),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.035,
                    ),
                    //text part1
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        height: 35,
                        width: double.infinity,
                        child: const Text(
                          'Enter your 4-digit code',
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff181725),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.022,
                    ),
                    //text part1
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        height: 20,
                        width: double.infinity,
                        child: const Text(
                          'Code',
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff7C7C7C),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Card(
              elevation: 0.9,
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefix: Text(' - - - -',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Gilroy',
                            color: Color(0xff181725)))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
