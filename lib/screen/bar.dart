import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:self_billing/screen/user_home.dart';
import 'package:self_billing/screen/user_viewcart.dart';


class MyHomePage1 extends StatefulWidget {
  MyHomePage1({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage1> with SingleTickerProviderStateMixin {
  late int currentPage;
  late TabController tabController;
  final pages = [
    HomeScreen(),
    Cart2(),
  ];


  @override
  void initState() {
    currentPage = 0;
    tabController = TabController(length: 5, vsync: this);
    tabController.animation?.addListener(
      () {
        final value = tabController.animation!.value.round();
        print("tab $value");
        if (value != currentPage && mounted) {
          changePage(value);
        }
      },
    );
    super.initState();
  }

  void changePage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final Color unselectedColor = Colors.black12;
    //final Color unselectedColorReverse =  Colors.black;

    return SafeArea(
      child: Scaffold(
        body: BottomBar(
          clip: Clip.none,
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              TabBar(
                indicatorPadding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                controller: tabController,
                tabs: [
                  SizedBox(
                    height: 55,
                    width: 40,
                    child: Center(
                        child: Icon(
                      Icons.home,
                      color: Colors.white,
                    )),
                  ),
                  //
                  //
                 //
                  SizedBox(
                    height: 55,
                    width: 40,
                    child: Center(
                      child: Icon(
                        Icons.wifi,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: -38,
                child: FloatingActionButton(
                  onPressed: () {
                    
                  },
                  child: Icon(Icons.qr_code_scanner),
                  backgroundColor: Colors.white,
                ),
              )
            ],
          ),
          fit: StackFit.expand,
          borderRadius: BorderRadius.circular(500),
          duration: Duration(milliseconds: 500),
          curve: Curves.decelerate,
          showIcon: true,
          width: MediaQuery.of(context).size.width * 10,
          barColor: Colors.deepPurpleAccent,
          start: 2,
          end: 0,
          offset: 10,
          barAlignment: Alignment.bottomCenter,
          iconHeight: 30,
          iconWidth: 30,
          reverse: false,
          hideOnScroll: true,
          scrollOpposite: false,
          onBottomBarHidden: () {},
          onBottomBarShown: () {},
          body: (context, controller) => pages[currentPage]
          // Container(
          //   height: double.infinity,
          //   width: double.infinity,
          //   color: const Color.fromARGB(255, 248, 247, 246),
          // ),
        ),
      ),
    );
  }
}