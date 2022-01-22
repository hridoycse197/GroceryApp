import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Card(
        elevation: 0.1,
        child: TextFormField(
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              border: InputBorder.none,
              helperStyle: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              prefixStyle: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              prefixText: '+880',
              prefixIcon:
                  Image(image: AssetImage('assets/phonenumbercountry.png'))),
        ),
      ),
    );
  }
}
