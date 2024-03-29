import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:self_billing/constants/colors.dart';
import 'package:self_billing/screen/mycartItemContainer.dart';
import 'package:self_billing/screen/staffcartItemContainer.dart';
import 'package:self_billing/screen/user_payment.dart';


class staff_viewbill extends StatelessWidget {
  const staff_viewbill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.arrow_back) ,
        onPressed: () {
          
        },),
       centerTitle: true,
       title: const Text('CUSTOMER BILL' ,style: const TextStyle(
                     color: Colors.white, fontWeight: FontWeight.bold)),
       backgroundColor: Colors.deepPurpleAccent,
       
       
       ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.maxFinite,
        color: AppColors.myCartBackgroundColor,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: double.infinity,
            child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                // row of text and icon
                Column(
                  children: [
                    
                    // column of image, text and button
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        StaffCartItemsContainer(
                        
                            image: 'https://media.dev.to/cdn-cgi/image/width=1000,height=420,fit=cover,gravity=auto,format=auto/https%3A%2F%2Fdev-to-uploads.s3.amazonaws.com%2Fuploads%2Farticles%2Fodibskvc8stbhzd5t0zx.png',
                            itemName: 'Nike Sneaker',
                            itemPrice: '₹2500',
                            itemQuantity: 2),
                        StaffCartItemsContainer(
                            image: 'https://in.images.search.yahoo.com/search/images;_ylt=AwrKACoJIdxlGuErESrmHAx.?p=macbook+air&type=E210IN826G0&fr=mcafee&fr2=p%3As%2Cv%3Av%2Cm%3Apivot#id=42&iurl=http%3A%2F%2Fwww.notebookcheck.net%2Fuploads%2Ftx_nbc2%2Fair13teaser.jpg&action=click',
                            itemName: 'Apple Laptop',
                            itemPrice: '₹3,50,000',
                            itemQuantity: 1),
                        StaffCartItemsContainer(
                            image: 'https://in.images.search.yahoo.com/search/images;_ylt=AwrKF4sLIdxlUfwmaCi9HAx.;_ylu=c2VjA3NlYXJjaARzbGsDYnV0dG9u;_ylc=X1MDMjExNDcyMzAwNQRfcgMyBGZyA21jYWZlZQRmcjIDcDpzLHY6aSxtOnNiLXRvcARncHJpZANzRDBBalRMclQyZW5IZmx6eEx5RHFBBG5fcnNsdAMwBG5fc3VnZwM4BG9yaWdpbgNpbi5pbWFnZXMuc2VhcmNoLnlhaG9vLmNvbQRwb3MDMARwcXN0cgMEcHFzdHJsAzAEcXN0cmwDOQRxdWVyeQNsYWR5JTIwc2hvZQR0X3N0bXADMTcwODkyNTMxNg--?p=lady+shoe&fr=mcafee&fr2=p%3As%2Cv%3Ai%2Cm%3Asb-top&ei=UTF-8&x=wrt&type=E210IN826G0#id=17&iurl=https%3A%2F%2Fwww.eyefootwear.com%2Fuserfiles%2Fproduct%2Fimage%2F393137419.jpg&action=click',
                            itemName: 'Nike Sneaker',
                            itemPrice: '₹50,000',
                            itemQuantity: 1)
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                // row of text and button
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Subtotal:'),Text('₹ 677')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Discount:'),Text('-₹ 50')
                      ],
                    ),SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('TOTAL:' ,style: const TextStyle(
                     color: Color.fromRGBO(76, 158, 235, 1))),Text('₹778',style: const TextStyle(
                     color: Color.fromRGBO(76, 158, 235, 1))),
                      ],
                    ),


                     InkWell(
                      onTap: () {
                        Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PaymentOptionScreen()));
                      },
                       child: Container(
                                color: Colors.yellow.shade600,
                                alignment: Alignment.center,
                                height: 50.0,
                                child: const Text(
                                  'Delivered',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                     ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}