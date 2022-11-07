import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'cus_clip.dart';

class Contact_Page extends StatelessWidget {
  const Contact_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(right: 50),
            child: AutoSizeText(
              'Contact Us',
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
      body: SizedBox(
        height: height,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              child: ClipPath(
                clipper: Clip1Clipper(),
                child: Container(
                  height: height,
                  width: width,
                  color: const Color(0xFFCB5A38),
                ),
              ),
            ),
            Positioned(
              top: height * 0.10,
              child: SizedBox(
                height: height * 0.7,
                width: width * 0.800,
                child: Card(
                  elevation: 10.0,
                  margin: EdgeInsets.zero,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5, horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: 10.0,
                        ),
                        ListTile(
                          tileColor: Color(0xFFF6F6F6),
                          title: AutoSizeText('ramnepal@gmail.com'),
                          leading: Icon(Icons.mail_outline),
                          iconColor: Color(0xFF000000),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        ListTile(
                          tileColor: Color(0xFFF6F6F6),
                          title: AutoSizeText('9810143589'),
                          leading: Icon(Icons.phone),
                          iconColor: Color(0xFF000000),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        ListTile(
                          tileColor: Color(0xFFF6F6F6),
                          title: AutoSizeText('ramnepal.com.np'),
                          leading: Icon(Icons.blur_circular_sharp),
                          iconColor: Color(0xFF000000),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        ListTile(
                          tileColor: Color(0xFFF6F6F6),
                          title: AutoSizeText('Itahari, Sunari'),
                          leading: Icon(Icons.location_on),
                          iconColor: Color(0xFF000000),
                        ),
                      ],
                    ),
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
