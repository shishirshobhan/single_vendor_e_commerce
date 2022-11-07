import 'package:e_commerce_project/transaction_details/theme.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'constants.dart';

class TransactionIndividual extends StatefulWidget {
  const TransactionIndividual({Key? key}) : super(key: key);

  @override
  State<TransactionIndividual> createState() => _TransactionIndividualState();
}

class _TransactionIndividualState extends State<TransactionIndividual> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Themes.backgroundColor,
      appBar: AppBar(
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(right: 50),
            child: AutoSizeText(
              'Transaction Details',
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: Color(0xffFFFFFF),
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  height: height * 0.4553,
                  width: width,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    margin: EdgeInsets.zero,
                    color: Colors.white,
                    elevation: 6.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 5.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundImage: const NetworkImage(
                                    'https://source.unsplash.com/random'),
                                radius: height * 0.0439,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      FittedBox(
                                        child: AutoSizeText(
                                          'Shishir Shobhan',
                                          style: TextStyle(
                                            fontSize: Constants.heading2,
                                            color: Colors.black,
                                            fontWeight:
                                            Themes.primaryFontWeight,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                left: 4.0,
                                                top: 6.0,
                                                right: 6.0),
                                            child: Icon(
                                              Icons.phone,
                                              color: Colors.grey,
                                              size: 15.0,
                                            ),
                                          ),
                                          FittedBox(
                                            child: AutoSizeText(
                                              '9810143898',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: Constants.text,
                                                fontWeight: Themes
                                                    .primaryTextFontWeight,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                left: 4.0,
                                                top: 6.0,
                                                right: 6.0),
                                            child: Icon(
                                              Icons.location_on,
                                              color: Colors.grey,
                                              size: 15,
                                            ),
                                          ),
                                          FittedBox(
                                            child: AutoSizeText(
                                              'Itahari',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: Constants.text,
                                                fontWeight: Themes
                                                    .primaryTextFontWeight,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(30)),
                                      primary: const Color(0xff56C054)),
                                  child: const Text(
                                    'Paid',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 8.0, right: 8.0),
                            child: Divider(
                              thickness: 1.0,
                              color: Color(0xffE3E3E3),
                            ),
                          ),
                          Center(
                            child: GridView.count(
                              shrinkWrap: true,
                              primary: false,
                              childAspectRatio: (2.5),
                              padding: const EdgeInsets.only(right: 15.0),
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 3,
                              crossAxisCount: 2,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        'Amount:',
                                        style: TextStyle(
                                            fontSize: Constants.subHeading),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 6.0),
                                        child: AutoSizeText(
                                          'Rs. 1000',
                                          style: TextStyle(
                                              fontSize: Constants.heading2),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        'Transaction Date',
                                        style: TextStyle(
                                            fontSize: Constants.subHeading),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 6.0),
                                        child: AutoSizeText(
                                          '2022-08-07 03:21 PM',
                                          style: TextStyle(
                                              fontSize: Constants.subHeading),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        'Received By:',
                                        style: TextStyle(
                                            fontSize: Constants.subHeading),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 6.0),
                                        child: AutoSizeText(
                                          'Shishir Shobhan',
                                          style: TextStyle(
                                              fontSize: Constants.subHeading),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        'Approved By:',
                                        style: TextStyle(
                                            fontSize: Constants.subHeading),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 6.0),
                                        child: AutoSizeText(
                                          'Bivek Bhattarai',
                                          style: TextStyle(
                                              fontSize: Constants.subHeading),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        'Payment Method:',
                                        style: TextStyle(
                                            fontSize: Constants.subHeading),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 6.0),
                                        child: AutoSizeText(
                                          'eSewa Wallet',
                                          style: TextStyle(
                                              fontSize: Constants.subHeading),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        'Remarks:',
                                        style: TextStyle(
                                            fontSize: Constants.subHeading),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 6.0),
                                        child: AutoSizeText(
                                          'Business Purpose',
                                          style: TextStyle(
                                              fontSize: Constants.subHeading),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
