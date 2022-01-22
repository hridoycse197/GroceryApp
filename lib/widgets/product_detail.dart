import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:groceryapp/data/data.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  late int orderquantity = 1;
  late int div_mul = 1;
  bool containerdata = false;
  bool favouritecolor = false;
  late double totalprice = Data().itemprice[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF2F3F2),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color(0xff181725),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(
              Icons.file_upload_outlined,
              color: Color(0xff181725),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffF2F3F2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Image(
                image: AssetImage(Data().exclusiveitem[0]),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Naturel Red Apple',
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        favouritecolor = !favouritecolor;
                      });
                    },
                    icon: Icon(Icons.favorite_border_outlined,
                        color: favouritecolor ? Colors.red : null),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  Data().itemquantity[0].toString() + 'kg, Price',
                  style: const TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (orderquantity > 1) {
                            orderquantity--;
                            div_mul--;
                            totalprice = Data().itemprice[0] * div_mul;
                          } else {
                            div_mul = 1;
                            totalprice = Data().itemprice[0];
                          }
                        });
                      },
                      icon: Icon(Icons.remove),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        orderquantity.toString(),
                        style: TextStyle(
                            color: Color(0xff181725),
                            fontFamily: 'Gilroy',
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffE2E2E2)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          orderquantity++;
                          div_mul++;
                          totalprice = Data().itemprice[0] * div_mul;
                        });
                      },
                      icon: Icon(Icons.add),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Text(
                    '\$' + totalprice.toStringAsFixed(2),
                    style: TextStyle(
                        color: Color(0xff181725),
                        fontFamily: 'Gilroy',
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 1,
              color: Color(0xffE2E2E2B2),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product Detail',
                    style: TextStyle(
                        color: Color(0xff181725),
                        fontFamily: 'Gilroy',
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          containerdata = !containerdata;
                        });
                      },
                      icon: Icon(containerdata
                          ? Icons.keyboard_arrow_up_outlined
                          : Icons.keyboard_arrow_down_outlined))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: containerdata ? 63 : 11,
                child: Text(
                  'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                  style: TextStyle(
                      color: Color(0xff7C7C7C),
                      fontFamily: 'Gilroy',
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 1,
              color: Color(0xffE2E2E2B2),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nutritions',
                    style: TextStyle(
                        color: Color(0xff181725),
                        fontFamily: 'Gilroy',
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Center(
                            child: Text(
                              '100gr',
                              style: TextStyle(
                                  color: Color(0xff181725),
                                  fontFamily: 'Gilroy',
                                  fontSize: 9,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          height: 18,
                          width: 34,
                          decoration: BoxDecoration(
                              color: Color(0xffEBEBEB),
                              borderRadius: BorderRadius.circular(7)),
                        ),
                        SizedBox(
                          width: 21,
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(),
            Container(
              height: 4,
              color: Color(0xffE2E2E2B2),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Reciew',
                    style: TextStyle(
                        color: Color(0xff181725),
                        fontFamily: 'Gilroy',
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xffF3603F),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xffF3603F),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xffF3603F),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xffF3603F),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xffF3603F),
                        ),
                        SizedBox(
                          width: 21,
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: ElevatedButton(
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
                  'Add To Basket',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFFF9FF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
