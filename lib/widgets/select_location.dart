import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:groceryapp/custom_widget/custom_button.dart';
import 'package:groceryapp/custom_widget/phone_number.dart';

class SelectLocation extends StatefulWidget {
  SelectLocation({Key? key}) : super(key: key);

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  final citylist = [
    'Agargaon',
    'Mirpur',
    'Uttara',
    'Dhanmandi',
    'Adabar',
    'Mohammadpur',
    'Dhaka Uddan',
    'Bijoy shoroni',
    'Khilkhet'
  ];

  String? selectedcity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.fill,
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
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 18,
                          color: Color(0xff181725),
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.035,
                  ),
                  //icon

                  const SizedBox(
                    height: 170,
                    width: 224,
                    child: Image(
                        image:
                            AssetImage('assets/sekect_location_map_icon.png')),
                  ),
                  //zonedropdown
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.022,
                  ),
                  //text part1
                  const Text(
                    'Select Your Location',
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff181725),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.011,
          ),
          //text part1
          const SizedBox(
            height: 57,
            width: 324,
            child: Text(
              'Swithch on your location to stay in tune with what’s happening in your area',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Gilroy',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff7C7C7C),
              ),
            ),
          ),
          //areadropdown
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.011,
          ),

          Container(
            alignment: Alignment.centerLeft,
            height: 78,
            width: 364,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Zone',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff7C7C7C),
                  ),
                ),
                DropdownButton<String>(
                  isExpanded: true,
                  icon: Icon(Icons.keyboard_arrow_down),
                  value: selectedcity,
                  items: citylist.map((menufunction)).toList(),
                  onChanged: (selectedcity) => setState(() {
                    this.selectedcity = selectedcity;
                  }),
                ),
              ],
            ),
          ),

          //areadropdown
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.011,
          ),

          Container(
            alignment: Alignment.centerLeft,
            height: 78,
            width: 364,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Area',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff7C7C7C),
                  ),
                ),
                DropdownButton<String>(
                  isExpanded: true,
                  icon: Icon(Icons.keyboard_arrow_down),
                  value: selectedcity,
                  items: citylist.map((menufunction)).toList(),
                  onChanged: (selectedcity) => setState(() {
                    this.selectedcity = selectedcity;
                  }),
                ),
              ],
            ),
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
              'Submit',
              style: TextStyle(
                fontFamily: 'Gilroy',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xffFFF9FF),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DropdownMenuItem<String> menufunction(String item) => DropdownMenuItem(
      value: item,
      child: Text(item),
    );
