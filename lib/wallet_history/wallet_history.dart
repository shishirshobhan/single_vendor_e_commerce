import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Wallet_History extends StatefulWidget {
  const Wallet_History({Key? key}) : super(key: key);

  @override
  State<Wallet_History> createState() => _Wallet_HistoryState();
}

class _Wallet_HistoryState extends State<Wallet_History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(right: 50),
            child: AutoSizeText(
              'Wallet History',
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: SizedBox(
                  child: AutoSizeText('Recent Transactions',style: TextStyle(color: Color(0xff908F8F),),),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25))),
                title: const AutoSizeText('Adidas Sport Shoe'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 6,
                    ),
                    AutoSizeText(
                      '10:30 AM',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                tileColor: const Color(0xffF6F6F6),
                leading: const CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://source.unsplash.com/random'),
                  radius: 30,
                ),
                trailing: const AutoSizeText(
                  'Rs.1685',
                  style: TextStyle(
                      color: Color(
                        0xffCB5A38,
                      ),
                      fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
