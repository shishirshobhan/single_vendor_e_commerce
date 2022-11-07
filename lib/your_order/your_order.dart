import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Your_Order extends StatefulWidget {
  const Your_Order({Key? key}) : super(key: key);

  @override
  State<Your_Order> createState() => _Your_OrderState();
}
class _Your_OrderState extends State<Your_Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(right: 50),
            child: AutoSizeText(
              'Your Orders',
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: SizedBox(
                child: AutoSizeText('Aug 7, 2022'),
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
                  AutoSizeText('Shishir Shobhan',),
                  SizedBox(
                    height: 9,
                  ),
                  AutoSizeText('Rs.300',style: TextStyle(color: Colors.black,fontSize: 16),)
                ],
              ),
              tileColor: const Color(0xffF6F6F6),
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://source.unsplash.com/random'),
                radius: 30,
              ),
              trailing: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xffE8D7D3),),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: const BorderSide(color: Color(0xffE8D7D3)))),
                ),
                onPressed: () {},
                child: const AutoSizeText('Pending',style: TextStyle(color: Color(0xffCB5A38)),),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: SizedBox(
                child: AutoSizeText('Aug 5, 2022'),
              ),
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
                  AutoSizeText('Shishir Shobhan',),
                  SizedBox(
                    height: 9,
                  ),
                  AutoSizeText('Rs.300',style: TextStyle(color: Colors.black,fontSize: 16),)
                ],
              ),
              tileColor: const Color(0xffF6F6F6),
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://source.unsplash.com/random'),
                radius: 30,
              ),
              trailing: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff56C054),),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: const BorderSide(color: Color(0xff56C054)))),
                ),
                onPressed: () {},
                child: const AutoSizeText('Completed',style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
