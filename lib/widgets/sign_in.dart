import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:groceryapp/custom_widget/custom_button.dart';
import 'package:groceryapp/custom_widget/phone_number.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Container(
            height: 300,
            child: Stack(
              children: [
                Positioned(
                  right: 2,
                  left: 10,
                  child: Container(
                      child: Image(
                          image: AssetImage('assets/Sign_In_Banner.png'))),
                ),
                const Positioned(
                  top: 11,
                  right: 45,
                  child: SizedBox(
                    height: 55,
                    child: Image(
                      image: AssetImage('assets/Sign_In_Banner_logo.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.091,
          ),
          //text part1
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Container(
              alignment: Alignment.topLeft,
              height: 70,
              width: double.infinity,
              child: const Text(
                'Get your groceries\nwith nectar',
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          PhoneNumber(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.031,
          ),
          const Text(
            'Or connect with social media',
            style: TextStyle(
              fontFamily: 'Gilroy',
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.052,
          ),
          CustomButton(
            bgcolor: Color(0xff5383EC),
            icon: Image(image: AssetImage('assets/google_icon.png')),
            title: 'Continue with Google',
            fontcolor: Color(0xffFCFCFC),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.024,
          ),
          CustomButton(
            bgcolor: Color(0xff4A66AC),
            icon: Image(image: AssetImage('assets/google_icon.png')),
            title: 'Continue with Facebook',
            fontcolor: Color(0xffFCFCFC),
          ),
        ],
      ),
    );
  }
}
