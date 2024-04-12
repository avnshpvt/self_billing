import 'package:flutter/material.dart';
import 'package:self_billing/constants/colors.dart';
import 'package:self_billing/constants/sizes.dart';

class MyCartItemsContainer extends StatelessWidget {
  MyCartItemsContainer(
      {Key? key,
      required this.image,
      required this.itemName,
      required this.itemPrice,
      required this.itemQuantity})
      : super(key: key);
  String image;
  String itemName;
  String itemPrice;
  int itemQuantity;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //a  row of image and text
          Row(
            children: [
              Image(fit: BoxFit.cover, image: NetworkImage(image),height: 50, width: 50,),
              SizedBox(
                width: 7,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemName,
                    style: TextStyle(
                        color: AppColors.lightBlue,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    itemPrice,
                    style: TextStyle(
                      color: AppColors.darkText,
                      fontSize: 12,
                      //fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
             
            ],
          ),
          w5,
          // button
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.lightBlue)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){
                  itemQuantity--;
                },
                icon:Icon(   Icons.remove,
                  size: 15,
                  color: AppColors.lightBlue,
                )
                ),
                Text(
                  itemQuantity.toString(),
                  style: TextStyle(
                    fontSize: 17,
                    color: AppColors.lightBlue,
                  ),
                ),
                IconButton(onPressed: (){
                  itemQuantity++;
                }, icon: Icon(
                  Icons.add,
                  size: 15,
                  color: AppColors.lightBlue,
                ),)
              ],
            ),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.delete,
                                     color: Colors.red.shade800))
        ],
      ),
    );
  }
}
