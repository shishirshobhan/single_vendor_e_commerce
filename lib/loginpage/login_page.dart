import 'package:flutter/material.dart';

import 'cus_clip.dart';

class Login_Page extends StatelessWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print(height);
    return Scaffold(
      body: Container(
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
                  color: Colors.green,
                ),
              ),
            ),
            Positioned(
              top: height * 0.345,
              child: SizedBox(
                height: height * 0.486,
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
                      children: [
                        const Text(
                          'SIGN IN',
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 50.0,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            fillColor: Color.fromRGBO(203, 90, 56, 0.35),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0XFFC85A38),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0XFFC85A38), width: 2.0),
                            ),
                            labelText: 'Username Or Email',
                            labelStyle: TextStyle(
                              color: Color(0XFF666464),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 27.0,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            fillColor: Color.fromRGBO(203, 90, 56, 0.35),
                            filled: true,
                            labelText: 'Password',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0XFFC85A38), width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0XFFC85A38), width: 2.0),
                            ),
                            labelStyle: TextStyle(color: Color(0XFF666464)),
                          ),
                        ),
                        Container(
                          alignment: const Alignment(1.0, 0.0),
                          padding: const EdgeInsets.only(top: 15.0, left: 20.0),
                          child: const InkWell(
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(color: Color(0XFF9D9B9B)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: FlatButton(
                            onPressed: () {},
                            color: const Color(0XFFCB5A38),
                            // shape: const Border.symmetric(),
                            child: const Text(
                              'Sign In',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Don\'t have an account?',
                              style: TextStyle(color: Color(0XFF9D9B9B)),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            InkWell(
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Color(0XFFCB5A38),
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: height * 0.128,
              child: Image.asset(
                'assets/images/cart_logo.png',
                scale: 1.0,
              ),
            ),
            Positioned(
              bottom: 10.0,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Divider(
                          thickness: 1.0,
                          indent: 10,
                          endIndent: 20,
                          color: Color(0XFFFFFFFF),
                          height: 20,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Sign up with',
                          style: TextStyle(color: Color(0XFFFFFFFF)),
                        ),
                      ),
                      const Expanded(
                        child: Divider(
                          thickness: 1.0,
                          indent: 10,
                          endIndent: 20,
                          color: Color(0XFFFFFFFF),
                          height: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      // Image.asset('assets/images/facebook.png')
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/images/facebook.png')),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
