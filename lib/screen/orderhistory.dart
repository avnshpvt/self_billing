import 'package:flutter/material.dart';
import 'package:self_billing/constants/sizes.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("My Orders",style: TextStyle(fontWeight:FontWeight.bold),)),
      ),
      body: ListView(
        children: [
          for(int i =0; i<8;i++)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color:  Colors.black12 ),
              child: ListTile(
                leading:CircleAvatar(child: Icon(Icons.shopping_bag)) ,
                title: Text("order #12345"),
                subtitle:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Placed On 15 March 2024"),
                    Row(

                      children: [
                        Text("items:25"),w15,Text("Total:2000"),
                      ],
                    ),
                  ],
                ) ,
                trailing: Icon(Icons.arrow_forward_ios
                ) ,
              ),
            ),
          )
        ],),
    );
  }
}