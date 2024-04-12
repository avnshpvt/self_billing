import 'package:flutter/material.dart';
import 'package:self_billing/constants/constantVariables.dart';
import 'package:self_billing/screen/bar.dart';
import 'package:self_billing/screen/login.dart';
import 'package:self_billing/screen/user_home.dart';
import 'package:self_billing/services/user/ViewCategoryApi.dart';
import 'package:self_billing/services/user/ViewProductApi.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    initCheck();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              ClipPath(
                clipper: WaveClipper2(),
                child: Container(
                  width: double.infinity,
                  height: h*0.8,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color.fromARGB(32, 247, 221, 225), Color.fromARGB(33, 252, 198, 198)])),
                  child: Column(),
                ),
              ),
              ClipPath(
                clipper: WaveClipper3(),
                child: Container(
                  width: double.infinity,
                  height: h*0.98,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0x44ff3a5a), Color(0x44fe494d)])),
                  child: Column(),
                ),
              ),
              ClipPath(
                clipper: WaveClipper1(),
                child: Container(
                  width: double.infinity,
                  height: h*0.98,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color.fromRGBO(124, 77, 255, 1), Color.fromARGB(255, 152, 118, 245)])),
                  child: const Column(
                    children: const <Widget>[
                      SizedBox(
                        height: 40,
                      ),
                      Icon(
                        Icons.shopify,
                        color: Colors.white,
                        size: 99,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "EASY BUY",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  //initFunc
  initCheck() async{
    Future.delayed(Duration(seconds: 3));
    final shared = await SharedPreferences.getInstance();
    final logid = shared.getString("lid");
    final isLoged = shared.getBool("isLogedin");
    final type = shared.getString("type");
    if (isLoged != null && isLoged == true ) {
      if (logid != null) {
        lid = logid;
        if (type == "user") {
          await getCategory();
          await getProducts();
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyHomePage1(),));
        }
        else{
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginSevenPage(),));
        }
      }
      else{
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginSevenPage(),));
      }
    }
    else{
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginSevenPage(),));
    }
  }

  //view products
  getProducts() async{
    final res = await getviewproduct();
    if (res != null) {
      products = res;
    }
  }

  //getCategory
  getCategory() async{
    print("Hi hiiiii");
    final res = await getCategoryapi();
    if (res != null) {
      print("he he he");
      categories = res;
      print("cat $categories");
    }
  }

}