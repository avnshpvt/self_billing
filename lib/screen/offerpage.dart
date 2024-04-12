import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:self_billing/constants/constantVariables.dart';
import 'package:self_billing/constants/sizes.dart';
import 'package:self_billing/screen/user_viewproductpage.dart';

class OfferItems extends StatelessWidget {
  const OfferItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Offer"),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10,3,10,10),
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                //here offer con
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(height: h!*0.3,width: w!*0.9,
                  child: Image.asset('assets/images/banner3.png',width: 900,height: 200,),
                  //child: Image(image: NetworkImage("https://static.vecteezy.com/system/resources/previews/000/178/364/original/super-sale-offer-and-discount-banner-template-for-marketing-and-vector.jpg")),
                  decoration: BoxDecoration(
                                  //image:DecorationImage(image: NetworkImage("https://dealroup.com/wp-content/uploads/2020/05/Grocery-Offers-1024x536.jpg")),
                                  border: Border.all(style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                ),),
                ),w10,Container(height: h!*0.3,width: w!*0.9,
                child: Image.asset('assets/images/banner1.png',width: 900,height: 200,),
                decoration: BoxDecoration(
                                border: Border.all(style: BorderStyle.none),
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white
                              ),),
              ],),
            ),h10,
            Container(height: h!*0.1,width: w!*2.3,
            //child: Image.asset('assets/images/banner6.png',width: 900,height: 200,),
            decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/banner6.png')),
                          border: Border.all(style: BorderStyle.none),
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white)),h15,
            _buildGridView()
          ],
        ),
      )
    );
  }

      //gridview
  Widget _buildGridView() {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.55,
        crossAxisCount: 2,
        crossAxisSpacing: 6
      ),
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        final item = products[index];
        return  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: w! * 0.42, height: h! * 0.2,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage("https://s2.best-wallpaper.net/wallpaper/1920x1200/1712/Nike-sneakers-shoes_1920x1200.jpg"
                                          )),
                                  border: Border.all(style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(7),
                                  //color: Colors.white
                                ),
                              ),
                              // RatingBar.builder(
                              //   itemSize: 20,
                              //   initialRating: 3,
                              //   minRating: 1,
                              //   direction: Axis.horizontal,
                              //   allowHalfRating: true,
                              //   itemCount: 5,
                              //   itemPadding:
                              //       EdgeInsets.symmetric(horizontal: 1.0),
                              //   itemBuilder: (context, _) => Icon(
                              //     Icons.star,
                              //     color: Colors.amber,
                              //   ),
                              //   onRatingUpdate: (rating) {
                              //     print(rating);
                              //   },
                              // ),
                              //Text("Rating",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                              Text(item.productName,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Text("Rs. ${item.price}", style: TextStyle(fontSize: 16)),
                              Container(
                                width: w! * 0.4,
                                //height: 30,
                                child: ElevatedButton.icon(
                                  onPressed: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetailsPage(isScanned: false,),));
                                  },
                                  icon: Icon(Icons.shopping_bag),
                                  label: Text('View'),
                                ),
                              ),
                            ],
                          );
      },
    );
  }
}