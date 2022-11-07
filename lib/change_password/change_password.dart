import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Change_Password extends StatelessWidget {
  const Change_Password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print(height);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(right: 50),
            child: AutoSizeText(
              'Change Password',
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
              top: height * 0.10,
              child: SizedBox(
                height: height * 0.486,
                width: width * 0.800,
                child: Card(
                  elevation: 10.0,
                  margin: EdgeInsets.zero,
                  color: const Color(0xffF6F6F6),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 3, horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 30.0,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            fillColor: Color.fromRGBO(255, 255, 255, 0.90),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0XFFC85A38),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0XFFF6F6F6), width: 2.0),
                            ),
                            labelText: 'Old Password',
                            labelStyle: TextStyle(
                              color: Color(0XFF666464),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            fillColor: Color.fromRGBO(255, 255, 255, 0.90),
                            filled: true,
                            labelText: 'New Password',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0XFFC85A38), width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0XFFF6F6F6), width: 2.0),
                            ),
                            labelStyle: TextStyle(color: Color(0XFF666464)),
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            fillColor: Color.fromRGBO(255, 255, 255, 0.90),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0XFFC85A38),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0XFFF6F6F6), width: 2.0),
                            ),
                            labelText: 'Re-enter Password',
                            labelStyle: TextStyle(
                              color: Color(0XFF666464),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: FlatButton(
                            onPressed: () {},
                            color: const Color(0xFF339EF5),
                            // shape: const Border.symmetric(),
                            child: const Text(
                              'Submit',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
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
