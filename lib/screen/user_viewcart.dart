import 'package:flutter/material.dart';
import 'package:self_billing/api/productapi.dart';
import 'package:self_billing/models/productmodels.dart';



List<Welcome> allCartItems = []; 



class Cart2 extends StatefulWidget {
   Cart2({super.key,});

  @override
  State<Cart2> createState() => _Cart2State();
}

class _Cart2State extends State<Cart2> {

  @override
  void initState() {
    apicall();
    // TODO: implement initState
    super.initState();
  }

  apicall() async {
    final myItems = await getproducts();
    allCartItems = myItems;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        backgroundColor: Color.fromARGB(255, 117, 7, 226),
      ),
      body: 
      ListView.builder(
   padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
   shrinkWrap: true,
   itemCount: allCartItems.length,
   itemBuilder: (context, index) {

    final item = allCartItems[index];

     return Card(
       color: Colors.blueGrey.shade200,
       elevation: 5.0,
       child: Padding(
         padding: const EdgeInsets.all(4.0),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           mainAxisSize: MainAxisSize.max,
           children: [
             Image(
               height: 80,
               width: 80,
               image: NetworkImage(item.image),
             ),
             SizedBox(
               width: 130,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const SizedBox(
                     height: 5.0,
                   ),
                   RichText(
                     overflow: TextOverflow.ellipsis,
                     maxLines: 1,
                     text: TextSpan(
                         text: 'Name: ',
                         style: TextStyle(
                             color: Colors.blueGrey.shade800,
                             fontSize: 16.0),
                         children: [
                           TextSpan(
                               text:
                                   '${item.title}\n',
                               style: const TextStyle(
                                   fontWeight: FontWeight.bold)),
                         ]),
                   ),
                   RichText(
                     maxLines: 1,
                     text: TextSpan(
                         text: 'Unit: ',
                         style: TextStyle(
                             color: Colors.blueGrey.shade800,
                             fontSize: 16.0),
                         children: [
                           TextSpan(
                               text:
                                   '${"6"}\n',
                               style: const TextStyle(
                                   fontWeight: FontWeight.bold)),
                         ]),
                   ),
                   RichText(
                     maxLines: 1,
                     text: TextSpan(
                         text: 'Price: ' r"$",
                         style: TextStyle(
                             color: Colors.blueGrey.shade800,
                             fontSize: 16.0),
                         children: [
                           TextSpan(
                               text:
                                   '${item.price.toString()}\n',
                               style: const TextStyle(
                                   fontWeight: FontWeight.bold)),
                         ]),
                   ),
                 ],
               ),
             ),
             ElevatedButton(
                 style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.blueGrey.shade900),
                 onPressed: () {
                  // saveData(index);
                 },
                 child: const Text('Add to Cart')),
           ],
         ),
       ),
     );
   }),
    );
  }
}