import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import '../transaction_details/constants.dart';
import '../transaction_details/theme.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);
  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  List<Map> users = [
    {
      "name": "Home",
      "icon": Icons.home,
    },
    {"name": "Cart", "icon": Icons.shopping_cart},
    {"name": "Notifications", "icon": Icons.notifications},
    {"name": "Your Orders", "icon": Icons.directions_bus},
    {"name": "Wishlist", "icon": Icons.list},
    {"name": "Wallet History", "icon": Icons.wallet},
    {"name": "Transaction History", "icon": Icons.format_list_numbered},
    {"name": "Change Password", "icon": Icons.shopping_bag},
    {"name": "Contact Us", "icon": Icons.contact_page_sharp},
    {"name": "Rate Us", "icon": Icons.star},
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffCB5A38),
        title: const Text('Appbar'),
      ),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.830,
        child: ListView(
          children: [
            Container(
              color: const Color(0xffCB5A38),
              height: 100.0,
              child: DrawerHeader(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: Container(
                  padding: const EdgeInsets.only(left: 20.0, top: 25.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundImage: const NetworkImage(
                                  'https://source.unsplash.com/random'),
                              radius: height * 0.0350,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FittedBox(
                                      child: AutoSizeText(
                                        'Veneet Karki',
                                        style: TextStyle(
                                          fontSize: Constants.heading2,
                                          color: Colors.white,
                                          fontWeight: Themes.primaryFontWeight,
                                        ),
                                      ),
                                    ),
                                    FittedBox(
                                      child: AutoSizeText(
                                        'vneet@gmail.com',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: Constants.text,
                                          fontWeight:
                                              Themes.primaryTextFontWeight,
                                        ),
                                      ),
                                    ),
                                    FittedBox(
                                      child: AutoSizeText(
                                        'Wallet Balance: Rs. 1235800',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: Constants.text,
                                          fontWeight:
                                              Themes.primaryTextFontWeight,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: height * 0.629,
              child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (BuildContext context, i) {
                  return ListTile(
                    visualDensity:
                        const VisualDensity(horizontal: 0, vertical: -3),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    leading: Icon(
                      users[i]["icon"],
                      size: 30,
                    ),
                    title: AutoSizeText(
                      users[i]["name"],
                      style: TextStyle(
                          fontSize: Constants.subHeading,
                          fontWeight: Themes.primaryTextFontWeight),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
