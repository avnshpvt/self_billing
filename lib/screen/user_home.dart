import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:self_billing/constants/sizes.dart';
import 'package:self_billing/screen/offerpage.dart';
import 'package:self_billing/screen/profile.dart';
import 'package:self_billing/screen/user_viewcart2.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            padding: const EdgeInsets.all(25.0),
            child: ListView(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [ InkWell(
                onTap:() =>  Navigator.of(context).push(MaterialPageRoute(builder: (context) => OfferItems(),)),
                child: Container(height: h!*0.2,width: w!*0.9,
                child: Image.asset('assets/images/banner2.png',width: 900,height: 800,),
                decoration: BoxDecoration(
                              border: Border.all(style: BorderStyle.none),
                              borderRadius: BorderRadius.circular(7),
                              color: Color.fromARGB(255, 242, 236, 236)
                            ),),
              ),h15,
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CategoryBar(icon: Icons.now_widgets_outlined,text: "All"),
                      w10,
                      CategoryBar(icon: Icons.cookie,text: "vegetables & Fruits",),w10,
                      CategoryBar(icon: Icons.water,text: "Beverages",),w10,
                      CategoryBar(icon: Icons.oil_barrel,text: "oil & Masala",),w10,
                      CategoryBar(icon: Icons.icecream,text: "Snacks",),w10,



                    ],
                  ),
                ),
              ),
              h20,
              for(int i =0;i<15;i++)
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,children: [
                        Container(
                          
                          width: w!*0.4,height: h!*0.22,
                          //child: Image(image: NetworkImage("https://4.bp.blogspot.com/-alt6CZLCoj4/VPUrRFSEglI/AAAAAAAAAMg/iK3FmY8nbw4/s1600/apple.jpg")),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image:  NetworkImage("https://4.bp.blogspot.com/-alt6CZLCoj4/VPUrRFSEglI/AAAAAAAAAMg/iK3FmY8nbw4/s1600/apple.jpg")),
                            border: Border.all(style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(7),
                            //color: Colors.white
                          ),),
                          RatingBar.builder(
                            itemSize: 20,
                                       initialRating: 3,
                                       minRating: 1,
                                       direction: Axis.horizontal,
                                       allowHalfRating: true,
                                       itemCount: 5,
                                       itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                       itemBuilder: (context, _) => Icon(
                         Icons.star,
                         color: Colors.amber,
                                       ),
                                       onRatingUpdate: (rating) {
                         print(rating);
                                       },
                                    ),
                          //Text("Rating",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                          Text("Fresh apple",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                          Text("Rs. 50",style: TextStyle(fontSize: 16)),
                          Container(
                            width: w!*0.4,
                            height: 30,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                // Add your onPressed callback here.
                              },
                              icon: Icon(Icons.shopping_bag),
                              label: Text('View Offer'),
                            ),
                          ),
                                      ],
                                    ),
                    
                                        
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,children: [
                        Container(
                          width: w!*0.4,height: h!*0.22,
                          decoration: BoxDecoration(
                            border: Border.all(style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white
                          ),),
                          RatingBar.builder(
                            itemSize: 20,
                                       initialRating: 3,
                                       minRating: 1,
                                       direction: Axis.horizontal,
                                       allowHalfRating: true,
                                       itemCount: 5,
                                       itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                       itemBuilder: (context, _) => Icon(
                         Icons.star,
                         color: Colors.amber,
                                       ),
                                       onRatingUpdate: (rating) {
                         print(rating);
                                       },
                                    ),
                          //Text("Rating",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                          Text("Fresh apple",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                          Text("Rs. 50",style: TextStyle(fontSize: 16)),
                          Container(
                            width: w!*0.4,
                            height: 30,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                // Add your onPressed callback here.
                              },
                              icon: Icon(Icons.shopping_bag),
                              label: Text('View Offer'),
                            ),
                          ),
                                      ],
                                    ),
                      ],
                    ),
                    h20
                  ],
                )
              ]),
          ),
          
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