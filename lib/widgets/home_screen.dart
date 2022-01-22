import 'dart:math' as math;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:groceryapp/data/data.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  Data alldata = Data();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          unselectedLabelStyle: const TextStyle(
              color: Color(0xff181725), fontSize: 12, fontFamily: 'Gilroy'),
          selectedLabelStyle: TextStyle(
              color: Color(0xff53B175), fontSize: 12, fontFamily: 'Gilroy'),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Color(0xff181725),
          selectedItemColor: Color(0xff53B175),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Shop'),
            BottomNavigationBarItem(
                icon: Icon(Icons.manage_search_outlined), label: 'Explore'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined), label: 'Favourite'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          ]),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image(
                  image: AssetImage('assets/login_icon.png'),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.location_on),
                    Text(
                      'Dhaka, Banassree',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 22.0, vertical: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffF2F3F2),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(19)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(19)),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color(0xff181B19),
                      ),
                      hintText: 'Search Here',
                      hintStyle: const TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff7C7C7C),
                      ),
                    ),
                  ),
                ),
                CarouselSlider.builder(
                  itemCount: alldata.banner.length,
                  itemBuilder: (context, index, realIndex) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: 400,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(alldata.banner[index]))),
                    ),
                  ),
                  options: CarouselOptions(height: 114),
                ),
                //Exclusive section
                SizedBox(
                  height: 20,
                ),
                exclusiveselling(),

                //Best Selling section
                SizedBox(
                  height: 26,
                ),
                BestSelling(),
                SizedBox(
                  height: 26,
                ),
                grocieries(),
                SizedBox(
                  height: 26,
                ),
                meatitem(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column meatitem() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Meat',
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff181722),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'See All',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff53B175),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 210,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: alldata.meatitempic.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: Color(0xFFFFFFFF),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xffE2E2E2)),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 22, horizontal: 24.0),
                      child: SizedBox(
                        height: 40,
                        width: 70,
                        child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage(alldata.meatitempic[index])),
                      ),
                    ),
                    Container(
                      width: 150,
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            alldata.meat_item_name[index].toString(),
                            style: const TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff181722),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            alldata.itemquantity[index].toString() +
                                'pcs, Priceg',
                            style: const TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff7C7C7C),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 140,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$' + alldata.itemprice[index].toString(),
                              style: const TextStyle(
                                fontFamily: 'Gilroy',
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff181722),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 45,
                                child: Icon(
                                  Icons.add,
                                  color: Color(0xffFFFFFF),
                                ),
                                width: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Color(0xff53B175)),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Column grocieries() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Groceries',
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff181722),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'See All',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff53B175),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 105,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: alldata.grocery_item_name.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  color: Color(0xFFFFFFFF),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xffE2E2E2)),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          image: AssetImage(alldata.groceryitempic[index]),
                        ),
                        Text(alldata.grocery_item_name[index])
                      ],
                    ),
                    width: 248,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Color(
                                (math.Random().nextDouble() * 0xFFFFFF).toInt())
                            .withOpacity(0.14)),
                  ));
            },
          ),
        ),
      ],
    );
  }

  Column BestSelling() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Best Selling',
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff181722),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'See All',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff53B175),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 210,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: alldata.exclusiveitem.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: Color(0xFFFFFFFF),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xffE2E2E2)),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 22, horizontal: 24.0),
                      child: SizedBox(
                        height: 40,
                        width: 70,
                        child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage(alldata.exclusiveitem[index])),
                      ),
                    ),
                    Container(
                      width: 150,
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            alldata.itemname[index].toString(),
                            style: const TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff181722),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            alldata.itemquantity[index].toString() +
                                'pcs, Priceg',
                            style: const TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff7C7C7C),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 140,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$' + alldata.itemprice[index].toString(),
                              style: const TextStyle(
                                fontFamily: 'Gilroy',
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff181722),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 45,
                                child: Icon(
                                  Icons.add,
                                  color: Color(0xffFFFFFF),
                                ),
                                width: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Color(0xff53B175)),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Column exclusiveselling() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Exclusive Offer',
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff181722),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'See All',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff53B175),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 210,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: alldata.exclusiveitem.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: Color(0xFFFFFFFF),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xffE2E2E2)),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 22, horizontal: 24.0),
                      child: SizedBox(
                        height: 40,
                        width: 70,
                        child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage(alldata.exclusiveitem[index])),
                      ),
                    ),
                    Container(
                      width: 150,
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            alldata.itemname[index].toString(),
                            style: const TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff181722),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            alldata.itemquantity[index].toString() +
                                'pcs, Priceg',
                            style: const TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff7C7C7C),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 140,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$' + alldata.itemprice[index].toString(),
                              style: const TextStyle(
                                fontFamily: 'Gilroy',
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff181722),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 45,
                                child: Icon(
                                  Icons.add,
                                  color: Color(0xffFFFFFF),
                                ),
                                width: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Color(0xff53B175)),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
