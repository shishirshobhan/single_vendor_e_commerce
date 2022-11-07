import 'package:e_commerce_project/transaction_details/transaction_details.dart';
import 'package:e_commerce_project/transaction_history/transaction_history.dart';
import 'package:e_commerce_project/wallet_history/wallet_history.dart';
import 'package:e_commerce_project/wishlist/wishlist.dart';
import 'package:e_commerce_project/your_order/your_order.dart';
import 'package:flutter/material.dart';
import 'add_to_cart/your_cart.dart';
import 'change_password/change_password.dart';
import 'contactpage/contact_us.dart';
import 'drawer/drawer.dart';
import 'electronics/electronics.dart';
import 'homepage/homepage.dart';
import 'loginpage/login_page.dart';
import 'notifications/notifications.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Wishlist(),
    );
  }
}
