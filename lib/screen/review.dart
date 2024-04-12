import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:self_billing/constants/sizes.dart';


class Review extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Share your feedback",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w900),),
                ],
              ),
              SizedBox(height: h!*0.4,),
              Text("Your feedback help us improve",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700)),
              h15,
              RatingBar.builder(
                        itemSize: 40,
                   initialRating: 3,
                   minRating: 1,
                   direction: Axis.horizontal,
                   allowHalfRating: true,
                   itemCount: 5,
                   itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                   itemBuilder: (context, _) => Icon(
                     Icons.star,
                     color: Colors.amber,
                   ), onRatingUpdate: (double value) {  },
                        ), 
                        h15,
              Text("Leave your comments",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700)),h5,
                        TextFormField(
                          maxLines: 3,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                          ),
                        ),
                        h25,
                        Container(
                                      height: 50,
                                      width: 350,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        border: Border.all(
                                          style: BorderStyle.none
                                        ),
                                        borderRadius: BorderRadius.circular(0)
                                      ),
                                      child: TextButton(onPressed: ()
                                      {
                                        
                                      },child: Text("Raise a complaint",style: TextStyle(color: Colors.white),),),
                      ),
                        h15,
                        Center(child: Text("No, Thank you"))
            ],
          ),
        )
      );
  }
}
