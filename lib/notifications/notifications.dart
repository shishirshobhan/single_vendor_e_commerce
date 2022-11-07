import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(right: 50),
            child: AutoSizeText(
              'Notifications',
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
               Padding(
                padding: const EdgeInsets.only(left: 15),
                child: SizedBox(
                  child: Row(
                    children: [
                      const AutoSizeText('New',style: TextStyle(fontSize: 16),),
                      Padding(
                        padding: const EdgeInsets.only(left:10),
                        child: Container(
                          height: 19,
                          width: 21,
                          color: const Color(0xffCB5A38),
                          child: const Center(child: AutoSizeText('01',style: TextStyle(color: Colors.white),),),
                        ),
                      ),
                    ],
                  ),
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
                // title: AutoSizeText('50% OFF in Ultraboost All Terrain Ltd Shoes!!'),
                title: RichText(
                  text: const TextSpan(
                    text: '50% OFF',
                    style: TextStyle(color: Color(0xffCB5A38), fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' in Ultraboost All Terrain Ltd Shoes!!',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                tileColor: const Color(0xffF6F6F6),
                leading: const CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://source.unsplash.com/random'),
                  radius: 25,
                ),
                trailing: const AutoSizeText(
                  '10:30 AM',
                  style: TextStyle(
                      color: Color(
                        0xff000000,
                      ),
                      fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
