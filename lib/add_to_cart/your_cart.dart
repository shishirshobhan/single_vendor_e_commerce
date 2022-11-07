import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Your_Cart extends StatefulWidget {
  const Your_Cart({Key? key}) : super(key: key);

  @override
  State<Your_Cart> createState() => _Your_CartState();
}

class _Your_CartState extends State<Your_Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(right: 50),
            child: AutoSizeText(
              'Your Cart',
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
              const SizedBox(
                height: 5,
              ),
              ListTile(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                  ),
                ),
                title: const AutoSizeText(
                  'Cannon EOS R6',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AutoSizeText(
                      'Rs.149888',
                      style: TextStyle(color: Color(0xffCB5A38), fontSize: 12),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 65,
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xffF6F6F6),),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.remove,
                                color: Colors.black,
                                size: 16,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 3),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 3, vertical: 2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.white),
                              child: const Text(
                                '3',
                                style: TextStyle(color: Colors.black, fontSize: 16),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                tileColor: const Color(0xffF6F6F6),
                leading: Image.asset(
                  'assets/Camera.png',
                  width: 100,
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  color: const Color(0xffCB5A38),
                  iconSize: 30,
                  onPressed: () {},
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
                    bottomLeft: Radius.circular(25),
                  ),
                ),
                title: const AutoSizeText(
                  'Cannon EOS R6',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AutoSizeText(
                      'Rs.149888',
                      style: TextStyle(color: Color(0xffCB5A38), fontSize: 12),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 65,
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xffF6F6F6),),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.remove,
                                color: Colors.black,
                                size: 16,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 3),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 3, vertical: 2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.white),
                              child: const Text(
                                '3',
                                style: TextStyle(color: Colors.black, fontSize: 16),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                tileColor: const Color(0xffF6F6F6),
                leading: Image.asset(
                  'assets/Camera.png',
                  width: 100,
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  color: const Color(0xffCB5A38),
                  iconSize: 30,
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 196,
                  width: 356,
                  color: const Color(0xffF6F6F6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 33, top: 16),
                        child: Row(
                          children: const [
                            AutoSizeText(
                              'Total Amount: ',
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            AutoSizeText(
                              ' Rs 9999999999',
                              style: TextStyle(
                                  color: Color(0xffCB5A38), fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Flexible(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 33, top: 4),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 150,
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      height: 0.5,
                                    ),
                                    cursorColor: Colors.grey,
                                    decoration: InputDecoration(
                                      fillColor: const Color(0xffFFFFFF),
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide.none),
                                      hintText: 'Enter Voucher Code ',
                                      hintStyle: const TextStyle(
                                        color: Color(0xffC6C6C6),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 60),
                                  child: TextButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                        const Color(0xffCB5A38),
                                      ),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18.0),
                                              side: const BorderSide(
                                                  color: Color(0xffCB5A38)))),
                                    ),
                                    onPressed: () {},
                                    child: const AutoSizeText(
                                      'Apply',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                        height: 11,
                        thickness: 1,
                        indent: 39,
                        endIndent: 38,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 33, top: 16),
                        child: Row(
                          children: const [
                            AutoSizeText(
                              'Grand Total: ',
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            AutoSizeText(
                              ' Rs 9999999999',
                              style: TextStyle(
                                  color: Color(0xffCB5A38), fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xffCB5A38),
                            ),
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: const BorderSide(
                                            color: Color(0xffCB5A38)))),
                          ),
                          onPressed: () {},
                          child: const AutoSizeText(
                            'Check out',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
