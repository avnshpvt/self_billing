import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:self_billing/constants/constantVariables.dart';
import 'package:self_billing/constants/sizes.dart';
import 'package:self_billing/models/categoryModel.dart';
import 'package:self_billing/screen/offerpage.dart';
import 'package:self_billing/screen/profile.dart';
import 'package:self_billing/screen/user_viewcart2.dart';
import 'package:self_billing/screen/user_viewproductpage.dart';
import 'package:self_billing/services/user/viewProfileapi.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    getProfile();
    // TODO: implement initState
    super.initState();
  }

  ValueNotifier<String> selectedCategory = ValueNotifier("All");
  ValueNotifier<bool> isLoading = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 242, 236, 236),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileOnePage()),
              );
            },
            child: Row(
              children: [
                CircleAvatar(),
                const SizedBox(
                  width: 11,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome", style: TextStyle(fontSize: 13)),
                      ValueListenableBuilder(
                        valueListenable: isLoading,
                        builder: (BuildContext context, value, Widget? child) { 
                          return 
                            isLoading.value == true? 
                            Center(child: CircularProgressIndicator(),)
                            : 
                            Text("${profile[0].firstName} ${profile[0].lastName}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold));
                         }, 
                      )
                    ])
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyCartScreen()));
                },
                child: CircleAvatar(
                  child: Icon(Icons.shopping_cart),
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => OfferItems(),
                  )),
                  child: Container(
                    height: h! * 0.2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/banner2.png'),
                        ),
                        border: Border.all(style: BorderStyle.none),
                        borderRadius: BorderRadius.circular(7),
                        color: Color.fromARGB(255, 242, 236, 236)),
                  ),
                ),
                h15,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Center(
                    child: ValueListenableBuilder(
                      valueListenable: selectedCategory,
                      builder: (BuildContext context, value, Widget? child) { 
                        return Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              selectedCategory.value = "All";
                            },
                            child: CategoryBar(
                              color: selectedCategory.value == "All" ? Colors.blue : Colors.black26,
                              tcolor: selectedCategory.value == "All" ? Colors.white : Colors.black,
                              icon: Icons.now_widgets_outlined,
                              text: "All",
                              category: categories[0],
                            ),
                          ),
                          w10,
                          for (int i = 0; i < categories.length; i++)
                            Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  selectedCategory.value = categories[i].categoryName;
                                },
                                child: CategoryBar(
                                  icon: Icons.cookie,
                                  text: categories[i].categoryName,
                                  category: categories[i],
                                  color: selectedCategory.value == categories[i].categoryName ? Colors.blue : Colors.black26,
                                  tcolor: selectedCategory.value == categories[i].categoryName ? Colors.white : Colors.black,
                                ),
                              ),
                              w10,
                            ],
                                                          )
                        ],
                      );
                       },
                      
                    ),
                  ),
                ),
                h20,
                 _buildGridView()
              ]),
        ),
      ),
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

  //get profile
  getProfile() async {
    isLoading.value = true;
    final res = await profileApi();
    if (res != null) {
      profile = res;
      print("Pro : $profile");
      isLoading.value = false;
    }
    else{
      isLoading.value = false;
    }
  }
}

class CategoryBar extends StatelessWidget {
  CategoryModel category;
  final IconData icon;
  final String text;
  final color;
  final tcolor;
  CategoryBar(
      {super.key,
      required this.icon,
      required this.text,
      required this.category, this.color, this.tcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color,
          border: Border.all(style: BorderStyle.none),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
        child: Row(
          children: [Icon(icon,color: tcolor,), w5, Text(text,style: TextStyle(color: tcolor),)],
        ),
      ),
      height: 40,
    );
  }
}
