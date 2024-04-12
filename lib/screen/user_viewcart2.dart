import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:self_billing/constants/colors.dart';
import 'package:self_billing/screen/mycartItemContainer.dart';
import 'package:self_billing/screen/user_payment.dart';


class MyCartScreen extends StatelessWidget {
  const MyCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
       centerTitle: true,
       title: const Text('My Cart' ,style: const TextStyle(
                     color: Colors.white, fontWeight: FontWeight.bold)),
       backgroundColor: Colors.deepPurpleAccent,
       
       
       ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.maxFinite,
        color: AppColors.backgroundColor,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8,0,8,0,),
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
                        MyCartItemsContainer( 
                            image: 'https://media.dev.to/cdn-cgi/image/width=1000,height=420,fit=cover,gravity=auto,format=auto/https%3A%2F%2Fdev-to-uploads.s3.amazonaws.com%2Fuploads%2Farticles%2Fodibskvc8stbhzd5t0zx.png',
                            itemName: 'Nike Sneaker',
                            itemPrice: 'NGN250,000',
                            itemQuantity: 2),
                        MyCartItemsContainer(
                            image: 'https://images.techhive.com/images/article/2015/04/macbook-no-glow-2-100578153-orig.jpg',
                            itemName: 'Apple Laptop',
                            itemPrice: 'NGN350,000',
                            itemQuantity: 1),
                        MyCartItemsContainer(
                            image: 'https://s2.best-wallpaper.net/wallpaper/1920x1200/1712/Nike-sneakers-shoes_1920x1200.jpg',
                            itemName: 'Nike Sneaker',
                            itemPrice: 'NGN50,000',
                            itemQuantity: 1)
                      ],
                    ),
                  ],
                ),
                const SizedBox(
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
                                  'Proceed to Pay',
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