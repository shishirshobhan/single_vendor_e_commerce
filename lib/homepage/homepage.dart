import 'package:flutter/material.dart';

import '../Resources/themes.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List scrollItems = [
    'Clothing',
    'Households',
    'Electronics',
    'Cosmetics',
    'Books',
    'Pencil'
  ];

  late String activeButton = scrollItems[0];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print(height);
    // print(width);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Homepage'),
        ),
      ),
      body: Container(
        width: width,
        color: Colors.greenAccent,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.063, vertical: height * 0.019),
              child: SizedBox(
                height: height * 0.275,
                width: width,
                child: Card(
                  elevation: 5.0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  margin: EdgeInsets.zero,
                  color: Themes.secondaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.076,
                            bottom: height * 0.051,
                            left: height * 0.019),
                        child: Column(
                          children: [
                            const Text(
                              'New Release',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            const Text('Cannon EOS R6'),
                            MaterialButton(
                              onPressed: () {},
                              elevation: 0.0,
                              height: height * 0.034,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(height * 0.025),
                                ),
                              ),
                              color: Themes.primaryColor,
                              child: Text('Shop More',
                                  style: TextStyle(color: Themes.textColor1)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.217,
                        margin: const EdgeInsets.only(right: 15.0),
                        child: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/1042/1042339.png'),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.064,
              // width: width,
              child: ListView.builder(
                padding: EdgeInsets.only(left: width * 0.063),
                shrinkWrap: true,
                itemCount: scrollItems.length,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            activeButton = scrollItems[index];
                          });
                        },
                        height: height * 0.038,
                        elevation: 5.0,
                        color: activeButton == scrollItems[index]
                            ? Themes.primaryColor
                            : Themes.secondaryColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Text(
                          scrollItems[index],
                          style: TextStyle(
                            color: activeButton == scrollItems[index]
                                ? Themes.textColor1
                                : Themes.textColor2,
                            fontSize: 12.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      )
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: height * 0.025, vertical: height * 0.011),
              child: Container(
                color: Colors.grey,
                height: height * 0.113,
                width: width,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: height * 0.025, vertical: height * 0.011),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text('Flash Sell'),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                color: Themes.primaryColor,
                                height: 30.0,
                                width: 30.0,
                                child: const Center(
                                    child: Text(
                                      '03',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                color: Themes.primaryColor,
                                height: 30.0,
                                width: 30.0,
                                child: const Center(
                                    child: Text(
                                      '03',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                color: Themes.primaryColor,
                                height: 30.0,
                                width: 30.0,
                                child: const Center(
                                    child: Text(
                                      '03',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                const Text('See more'),
                                Container(
                                  color: Colors.grey,
                                  child: const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 17.0,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: height * 0.025, vertical: height * 0.011),
                      height: 160.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Container(
                                color: Colors.grey,
                                width: 110.0,
                                height: 150.0,
                                child: Column(
                                  children: [
                                    Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/1042/1042339.png'),
                                    const Text('Acer Nitro 5'),
                                    Text(
                                      'Rs.50000',
                                      style:
                                      TextStyle(color: Themes.primaryColor),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: height * 0.025, vertical: height * 0.011),
                      height: 160.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Container(
                                color: Colors.grey,
                                width: 110.0,
                                height: 150.0,
                                child: Column(
                                  children: [
                                    Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/1042/1042339.png'),
                                    const Text('Acer Nitro 5'),
                                    Text(
                                      'Rs.50000',
                                      style:
                                      TextStyle(color: Themes.primaryColor),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
