import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:self_billing/constants/sizes.dart';
import 'package:self_billing/screen/profile.dart';
import 'package:self_billing/screen/qrscanner.dart';
import 'package:self_billing/screen/user_viewcart2.dart';

class staff_userScreen extends StatelessWidget {
  const staff_userScreen({super.key});

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top:18),
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 242, 236, 236),
          appBar: AppBar(
            title: 
            InkWell(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfileOnePage()),
    );
  },
              child: Row(children: [CircleAvatar(),SizedBox(width: 11,), Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("Welcome",style: TextStyle(fontSize: 13)),Text("Varun Raj",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))])],
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 18),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyCartScreen()));
                  },
                  child: CircleAvatar(
                    child: Icon(Icons.shopping_cart)
                  ,
                  
                  ),
                ),
              )
            ],
            
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  h20,
                  Container(
                    width: w!*0.85,
                    height: h!*0.85,
              child: MobileScanner(
                controller: MobileScannerController(
                  detectionSpeed: DetectionSpeed.noDuplicates,
                  returnImage: true,
                ),
                onDetect: (capture) async{
                  final List<Barcode> barcodes = capture.barcodes;
                  final Uint8List? image = capture.image;
                  for (final barcode in barcodes) {
                    qrScannedOrderId = barcode.rawValue;
                    print(qrScannedOrderId);
                    print('Barcode found! ${barcode.rawValue}');
                  }
                  if (image != null) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                            barcodes.first.rawValue ?? "",
                          ),
                          content: Image(
                            image: MemoryImage(image),
                          ),
                        );
                      },
                    );
                    await Future.delayed(Duration(seconds: 2));
                    //final resp = await getOrderdetailsApi();
                    //Navigator.of(context).pop();
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderDetails(order: resp!,),));
                  }
                },
              ),
                      ),
                ],
              ),
            ),
          )
          
        ),
      ),
    );
  }
}

class CategoryBar extends StatelessWidget {
  final IconData icon;
  final String text;
  const CategoryBar({
    super.key, required this.icon, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(
                          style: BorderStyle.none
                        ),
                        borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15,10,15,10),
                          child: Row(children: [Icon(icon),w5,Text(text)],),
                        ),
      height:40,
    );
  }
}