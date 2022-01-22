import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:groceryapp/custom_widget/custom_button.dart';
import 'package:groceryapp/custom_widget/phone_number.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool passvisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                          alignment: Alignment.center,
                          width: double.infinity,
                          child: Image(
                              image: AssetImage('assets/login_icon.png'))),
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
                          'Loging',
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
                          'Enter your emails and password',
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
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Email',
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff7C7C7C),
                    ),
                  ),
                  Card(
                    elevation: 0.9,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Password',
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff7C7C7C),
                    ),
                  ),
                  Card(
                    elevation: 0.9,
                    child: TextFormField(
                      obscureText: passvisible,
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () => setState(() {
                            passvisible = !passvisible;
                          }),
                          child: Icon(
                              passvisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Color(0xff7C7C7C)),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27.0),
              child: Container(
                width: double.infinity,
                child: Text(
                  'Forgot Password?',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff7C7C7C),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(Size(353, 67)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18))),
                backgroundColor: MaterialStateProperty.all(
                  Color(0xff53B175),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Log In',
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffFFF9FF),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            RichText(
              text: TextSpan(
                text: 'Don\'t have an account? ',
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: 'SignUp',
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff53B175),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
