import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({Key? key}) : super(key: key);
  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(right: 50),
            child: AutoSizeText(
              'Wishlist',
              style: TextStyle(color: Color(0xFFCB5A38), fontSize: 24.0),
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            color: Color(0xFF000000),
            size: 40.0,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                width: width,
                height: 200.0,
                child: Card(
                  color: const Color(0xffF6F6F6),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  elevation: 5.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 40),
                        child: Image.asset(
                          'assets/Camera.png',
                          width: 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 25),
                        child: Column(
                          children: [
                            const AutoSizeText(
                              'Cannon EOS R6',
                              style: TextStyle(
                                  color: Color(0xff000000), fontSize: 20),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const AutoSizeText(
                              'Color: Black, Model: 2022 ',
                              style: TextStyle(
                                  color: Color(0xff6B6A6A), fontSize: 12),
                            ),
                            const SizedBox(
                              height: 11,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 40),
                              child: AutoSizeText(
                                'Rs. 99,99,999',
                                style: TextStyle(
                                    color: Color(0xffCB5A38), fontSize: 16),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 70),
                              child: AutoSizeText(
                                'Rs. 102,999',
                                style: TextStyle(
                                    color: Color(0xff747373),
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 12),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 80),
                                  child: IconButton(
                                    icon: const Icon(Icons.delete),
                                    onPressed: () {},
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.shopping_cart,
                                    color: Color(0xffCB5A38),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 18.0,
              ),
              Container(
                color: const Color(0xffF6F6F6),
                height: 51,
                width: 361,
                child: TextButton(
                  onPressed: () {},
                  child: const Center(
                    child: AutoSizeText(
                      'Add all to cart',
                      style: TextStyle(color: Color(0xffCB5A38), fontSize: 20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 18.0,
              ),
              Container(
                height: 361,
                width: 478,
                color: const Color(0xffF6F6F6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    const Center(
                        child: AutoSizeText(
                      'Recommended Items',
                      style: TextStyle(color: Color(0xff000000), fontSize: 24),
                    )),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 9),
                      child: Row(
                        children: [
                          Container(
                            height: 201,
                            width: 165,
                            color: const Color(0xffFFFFFF),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 32, top: 8),
                                  child: Stack(
                                    children: [
                                      Image.asset(
                                        'assets/headphone.png',
                                        width: 100,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          left: 70,
                                        ),
                                        child: CircleAvatar(
                                          radius: 16,
                                          backgroundColor: Color(0xffCB5A38),
                                          child: AutoSizeText(
                                            '-17%',
                                            style: TextStyle(
                                                color: Color(0xffFFFCFB),
                                                fontSize: 9),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 13,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    AutoSizeText(
                                      'JBL Headphones',
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: AutoSizeText(
                                        'Rs. 11,999',
                                        style: TextStyle(
                                            color: Color(0xffCB5A38),
                                            fontSize: 16),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 15, top: 3),
                                      child: AutoSizeText(
                                        'Rs. 11,999',
                                        style: TextStyle(
                                            color: Color(0xffC8C7C7),
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 23,
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {},
                                    ),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.shopping_cart,
                                        color: Color(0xffCB5A38),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Container(
                              height: 201,
                              width: 165,
                              color: const Color(0xffFFFFFF),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 32, top: 8),
                                    child: Image.asset(
                                      'assets/headphone.png',
                                      width: 100,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 13,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      AutoSizeText(
                                        'JBL Headphones',
                                        style: TextStyle(
                                            color: Color(0xff000000),
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: AutoSizeText(
                                          'Rs. 11,999',
                                          style: TextStyle(
                                              color: Color(0xffCB5A38),
                                              fontSize: 16),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 15, top: 3),
                                        child: AutoSizeText(
                                          'Rs. 11,999',
                                          style: TextStyle(
                                              color: Color(0xffC8C7C7),
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      RatingBar.builder(
                                        initialRating: 3,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: 23,
                                        itemBuilder: (context, _) => const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {},
                                      ),
                                      IconButton(
                                        icon: const Icon(
                                          Icons.shopping_cart,
                                          color: Color(0xffCB5A38),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
