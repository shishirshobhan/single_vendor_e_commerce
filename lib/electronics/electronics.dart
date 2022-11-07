import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Electronics extends StatefulWidget {
  const Electronics({Key? key}) : super(key: key);

  @override
  State<Electronics> createState() => _ElectronicsState();
}

class _ElectronicsState extends State<Electronics> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Electronics',
          style: TextStyle(color: Color(0xFFCB5A38), fontSize: 24.0),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.black,
            size: 40,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                ),
                onPressed: () {}),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Center(
                      child: SizedBox(
                        width: 218,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            height: 0.5,
                          ),
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            fillColor: const Color(0xffF6F6F6),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                            hintText: 'What are you looking for ?',
                            hintStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // const AutoSizeText('Hello'),
              Container(
                // height: height * 0.90,
                // width: width * 100,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18, left: 23),
                      child: Row(
                        children: [
                          Container(
                            height: 201,
                            width: 165,
                            color: const Color(0xffF6F6F6),
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
                                          color: Color(0xff000000), fontSize: 18),
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
                                      padding: EdgeInsets.only(left: 15, top: 3),
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
                                const SizedBox(
                                  height: 14,
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
                                    const Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: AutoSizeText(
                                        '2/3',
                                        style: TextStyle(
                                            color: Color(0xffC8C7C7),
                                            fontSize: 14),
                                      ),
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
                              color: const Color(0xffF6F6F6),
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
                                  const SizedBox(
                                    height: 14,
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
                                      const Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child: AutoSizeText(
                                          '2/3',
                                          style: TextStyle(
                                              color: Color(0xffC8C7C7),
                                              fontSize: 14),
                                        ),
                                      )
                                      // IconButton(
                                      //   icon: const Icon(
                                      //     Icons.shopping_cart,
                                      //     color: Color(0xffCB5A38),
                                      //   ),
                                      //   onPressed: () {},
                                      // ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.5),
                      child: Container(
                        height: 135,
                        width: 374,
                        color: const Color(0xffF6F6F6),
                        child: Image.asset(
                          'assets/banner.png',
                          // width: 100,
                        ),
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
