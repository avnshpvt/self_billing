
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:self_billing/constants/sizes.dart';

class ProductDetailsPage extends StatelessWidget {
  bool? isScanned;
  ProductDetailsPage({super.key, this.isScanned});

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 237, 234),

      appBar: AppBar(
        title: const Text('Product Details'),
        backgroundColor: Color.fromARGB(255, 239, 237, 234),
        actions: const [
          //ProfileBtn(),
        ],
      ),
      body: ListView(
        children: [
        Container(height: h!*0.3,color:  Color.fromARGB(255, 239, 237, 234),child: Center(child: Image(image: NetworkImage("https://th.bing.com/th/id/R.456346dda0de6870093b346ce3631840?rik=rElGTNT%2bYbfzBQ&riu=http%3a%2f%2fwww.pngplay.com%2fwp-content%2fuploads%2f1%2fSliced-Strawberry-Transparent-File.png&ehk=R93yNroZg138putw%2bjHx4GudgmC%2fKTyQe4JZqbC1%2bl4%3d&risl=&pid=ImgRaw&r=0"))),),
        Container(decoration: BoxDecoration(border: Border.all(style: BorderStyle.none),borderRadius: 
        BorderRadius.only(topLeft: Radius.circular(40),topRight :Radius.circular(40))),),
        
        Expanded(child: Container(
          decoration: BoxDecoration(border: Border.all(style: BorderStyle.none),borderRadius: 
        BorderRadius.only(topLeft: Radius.circular(40),topRight :Radius.circular(40)),color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15,30,15,10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Strawberries", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27),),
                Text("₹ 120.00", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.deepPurpleAccent),)],
              
              ),
              
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 12.0),
            //   child: RatingBar.builder(
            //           itemSize: 20,
            //      initialRating: 3,
            //      minRating: 1,
            //      direction: Axis.horizontal,
            //      allowHalfRating: true,
            //      itemCount: 5,
            //      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
            //      itemBuilder: (context, _) => Icon(
            //        Icons.star,
            //        color: Colors.amber,
            //      ), onRatingUpdate: (double value) {  },
            //           ), 
              
            // ),
            h5,
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text("Description",style: TextStyle(fontSize: 21),),
              

            ) ,h5,
            Padding(
              padding: const EdgeInsets.fromLTRB(12,12,12,12),
              child: Text("Strawberries are a popular and delicious fruit that are widely cultivated around the world. They are a hybrid species of the genus Fragaria and are known for their bright red color, juicy texture, and sweet aroma. Strawberries are consumed in large quantities, both fresh and in prepared foods such as preserves, fruit juice, and desserts.",style: TextStyle(color: Color.fromARGB(255, 81, 81, 76)),),
            ),h20,
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Total:",style: TextStyle(fontSize: 19),),w10, Text("₹ 120.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19) ,),
                    ],
                  ),
                Row(
                  children: [
                    CircleAvatar(child: Icon(Icons.add,color: Colors.white),backgroundColor: Colors.deepPurpleAccent,),w10,  Text("1 kg",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),w10,CircleAvatar(child: Icon(Icons.remove,color: Colors.white),backgroundColor: Colors.deepPurpleAccent,),w10
                  ],
                )
                ],
              ),
            ),h30,
            Center(
              child: Padding(
                        padding: const EdgeInsets.only(bottom: 39.0),
                        child: Container( 
                          decoration: BoxDecoration(
                            border: Border.all(style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.deepPurpleAccent,
                          ),
                  height: 50,width: 350,  child: Center(child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_cart,color: Colors.white,),w10,
                        Text("ADD TO CART",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                      ],
                    ),
                  )),
                ),
                      ),
            )
            ],
            
            
        ),
        )),
        ],
        
        
        
      ),
      
    );
  }
}
