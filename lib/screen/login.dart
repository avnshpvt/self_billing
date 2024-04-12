/**
 * Author: Sudip Thapa  
 * profile: https://github.com/sudeepthapa
  */
import 'package:flutter/material.dart';
import 'package:self_billing/constants/constantVariables.dart';
import 'package:self_billing/screen/bar.dart';
import 'package:self_billing/screen/reg.dart';
import 'package:self_billing/screen/registration.dart';
import 'package:self_billing/screen/staff_home.dart';
import 'package:self_billing/services/loginApi.dart';
import 'package:self_billing/services/user/ViewCategoryApi.dart';
import 'package:self_billing/services/user/ViewProductApi.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginSevenPage extends StatefulWidget {
  static const String path = "lib/src/pages/login/login7.dart";

  const LoginSevenPage({super.key});
  @override
  _LoginSevenPageState createState() => _LoginSevenPageState();
}

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  ValueNotifier<bool> isClicked = ValueNotifier(false);


class _LoginSevenPageState extends State<LoginSevenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipPath(
                clipper: WaveClipper2(),
                child: Container(
                  width: double.infinity,
                  height: 300,
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
                  height: 300,
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
                  height: 300,
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
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Material(
              elevation: 2.0,
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              child: TextFormField(
                controller: emailController,
                onChanged: (String value) {},
                cursorColor: Colors.deepPurpleAccent,
                decoration: const InputDecoration(
                    hintText: "Email",
                    prefixIcon: Material(
                      elevation: 0,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Icon(
                        Icons.email,
                        color: Colors.deepPurpleAccent,
                      ),
                    ),
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Material(
              elevation: 2.0,
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              child: TextFormField(
                controller: passwordController,
                onChanged: (String value) {},
                cursorColor: Colors.deepPurpleAccent,
                decoration: const InputDecoration(
                    hintText: "Password",
                    prefixIcon: Material(
                      elevation: 0,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Icon(
                        Icons.lock,
                        color: Colors.deepPurpleAccent,
                      ),
                    ),
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    color: Colors.deepPurpleAccent),
                child: TextButton(

                  child: 
                  
                  ValueListenableBuilder(valueListenable: isClicked, 
                  builder: (context, value, child) {

                    if(isClicked.value == true){ return Center(child: CircularProgressIndicator(),);} 
                    else{
                      return
                       Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  );
                    }
                   
                  },
                  ),
                  onPressed: () async{
                    isClicked.value = true;
                    print('hello');
                    await loginCheck();
                    //await loginApi(emailController.text, passwordController.text);
                  },
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              "FORGOT PASSWORD ?",
              style: TextStyle(
                  color: Colors.deepPurpleAccent, fontSize: 12, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Don't have an Account ? ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
              ),
              TextButton(onPressed: (){
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Reg1()),
            );
              }, child: Text("Sign Up ",
                  style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      decoration: TextDecoration.underline)),)
            ],
          )
        ],
      ),
    );
  }

  //login func
  loginCheck() async{
    print("here");
    final res = await loginApi(emailController.text, passwordController.text);
    //print(res!.type);
    if (res != null){
      getProducts();
      getCategory();
      final shared = await SharedPreferences.getInstance();
      shared.setBool("isLogedin", true);
      shared.setString("lid", res.loginid.toString());
      shared.setString("type", res.type);
      isClicked.value = false;
      
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("successfully logined"),
                backgroundColor: Colors.green,
                behavior: SnackBarBehavior.floating,
                margin: EdgeInsets.all(10),
                duration: Duration(seconds:3)));
      if (res.type=="user") {
        
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage1()));   
      }
      if (res.type=="staff") {
        isClicked.value = false;
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => staffhome()));
        
      } 
    }
    else{
      isClicked.value = false;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Invalid credentials"),
                backgroundColor: Colors.red,
                behavior: SnackBarBehavior.floating,
                margin: EdgeInsets.all(10),
                duration: Duration(seconds:8)));
    }
    isClicked.value = false;
    
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

class WaveClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * 0.6, size.height - 29 - 50);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 60);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * 0.6, size.height - 15 - 50);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 40);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * .7, size.height - 40);
    var firstControlPoint = Offset(size.width * .25, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 45);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}