import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:rive/rive.dart';
import 'dart:io';
import 'package:project_uts/screens/details_screen.dart';
import 'package:project_uts/widgets/bottom_nav_bar.dart';
import 'package:project_uts/widgets/category_card.dart';

void main() {
  runApp(const MyApp());
}

// late RiveAnimationController _btnAnimationController;

// void initState() {
//   _btnAnimationController = OneShotAnimation(
//     "active",
//     autoplay: false,
//   );
//   super.initState();
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wishlist Apps',
      // theme: ThemeData(
      //   backgroundColor: Color.fromARGB(255, 83, 70, 113),
      // ),
      home: MainApp(),
      // home: HomeScreen(controller: RiveAnimationController, isActive: bool),
      routes: {
        '/detail': (context) => DetailsScreen(),
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool switchOn = false;

  AppBar myAppbar = AppBar(
    backgroundColor: Color.fromARGB(255, 83, 70, 113),
    title: Text('Wishlist App'),
  );

  // late final RiveAnimationController controller;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double heightDevice = MediaQuery.of(context).size.height;
    final double widthDevice = MediaQuery.of(context).size.width;
    final double bodyApp = heightDevice - myAppbar.preferredSize.height - MediaQuery.of(context).padding.top;
    return MaterialApp(
      theme: switchOn? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: myAppbar,
        // bottomNavigationBar: null,
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 84, 60, 99),
          width: 288,
          child: Column(
            children: [
              Container(
                height: 200,
                color: Color.fromARGB(255, 157, 141, 171),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white24,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                      title: Text("Rista Safitri"),
                      subtitle: Text("r@gmail.com"),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Divider(
                  color: Colors.white24,
                  height: 1,
                ),
              ),
              ListTile(
                onTap: () {
                  // if(isActive){
                  //   controller.isActive = true;
                  // } else {
                  //   controller.isActive = false;
                  // }
                  // _btnAnimationController.isActive = true;
                },
                leading: SizedBox(
                  height: 34,
                  width: 34,
                  child: RiveAnimation.asset(
                    "assets/RiveAssets/icons.riv",
                    artboard: "HOME",
                    // controllers: [controller],
                    // controllers: [_btnAnimationController],
                    // onInit: (String? artboard) {},
                      
                  ),
                ),
                title: Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: SizedBox(
                  height: 34,
                  width: 34,
                  child: RiveAnimation.asset(
                    "assets/RiveAssets/icons.riv",
                    artboard: "SEARCH",
                    // onInit: (String? artboard) {},
                  ),
                ),
                title: Text(
                  "Search",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                // Navigator.pushNamed(context, '/detail');
                  Navigator.of(context).push(
                    MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                    ),
                  );
                },
                leading: SizedBox(
                  height: 34,
                  width: 34,
                  child: RiveAnimation.asset(
                    "assets/RiveAssets/icons.riv",
                    artboard: "LIKE/STAR",
                    // onInit: (String? artboard) {},
                  ),
                ),
                title: Text(
                  "Favorites",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: SizedBox(
                  height: 34,
                  width: 34,
                  child: RiveAnimation.asset(
                    "assets/RiveAssets/icons.riv",
                    artboard: "USER",
                    // onInit: (String? artboard) {},
                  ),
                ),
                title: Text(
                  "Acount",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: SizedBox(
                  height: 34,
                  width: 34,
                  child: RiveAnimation.asset(
                    "assets/RiveAssets/icons.riv",
                    artboard: "SETTINGS",
                    // onInit: (String? artboard) {},
                  ),
                ),
                title: Text(
                  "Setting",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: SizedBox(
                  height: 34,
                  width: 34,
                  child: RiveAnimation.asset(
                    "assets/RiveAssets/icons.riv",
                    artboard: "CHAT",
                    // onInit: (String? artboard) {},
                  ),
                ),
                title: Text(
                  "Help",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SwitchListTile(
                title: Text(
                  "Dark Mode",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                activeColor: Colors.greenAccent,
                value: switchOn,
                onChanged: (bool value) {
                  setState(() {
                    switchOn = !switchOn;
                  });
                },
                secondary: const Icon(
                  CupertinoIcons.arrow_2_circlepath,
                  size: 26,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: BottomNavItem(
        //   press: () {},
        // ),
        body: Stack(
          children: <Widget>[
            Container(
              // height: size.height * .47,
              height: heightDevice * .45,
              width: widthDevice,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 154, 124, 179),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20), 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "\nMy Wishlist",
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontWeight: FontWeight.w600, fontSize: 32),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 30),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(29.5),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          icon: Icon(Icons.search),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: .85,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        children: <Widget>[
                          CategoryCard(
                            svgSrc: "assets/images/NEW_BALANCE0.svg",
                            title: "New Balance",
                            price: "\$220,39",
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context){
                                    return DetailsScreen();
                                  }
                                ),
                              );
                            },
                            press: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(),
                              ),
                            ),
                            // press: () {
                            //   Navigator.of(context).push(
                            //     MaterialPageRoute(
                            //       builder: (context) => const DetailsScreen(),
                            //     ),
                            //   );
                            // },
                          ),
                          CategoryCard(
                            svgSrc: "assets/images/bakpao_mug.svg",
                            title: "Bao Mug",
                            price: "\$83,64",
                            press: () {}, onTap: () {  },
                          ),
                          CategoryCard(
                            svgSrc: "assets/images/tas_bebek0.svg",
                            title: "Duck Handbag",
                            price: "\$48.79",
                            press: () {}, onTap: () {  },
                          ),
                          CategoryCard(
                            svgSrc: "assets/images/karpet_kelinci0.svg",
                            title: "Rabbit Carpet",
                            price: "\$76.93",
                            press: () {}, onTap: () {  },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        // bottomNavigationBar: null,
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  // const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with TickerProviderStateMixin {
  int currentIndex = 0;
  late Animation<double> animation;
  late AnimationController _animationController;

  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    )..addListener(() {
      setState(() {});
    });
    
    animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(parent: _animationController, curve: Curves.fastOutSlowIn));
    super.initState();
  }

  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

    final List<Widget> pages = [
      HomeScreen(),
      DetailsScreen(),
      Akun(),
    ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: Transform.translate(
          offset: Offset(0, 100 * animation.value),
          child: CurvedNavigationBar(
            backgroundColor: Colors.white,
            color: Colors.deepPurple.shade200,
            animationDuration: Duration(milliseconds: 300),
            onTap: (index){
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              Icon(
                Icons.home,
                color: Color.fromARGB(255, 86, 45, 112),
              ),
              Icon(
                Icons.favorite,
                color: Color.fromARGB(255, 86, 45, 112),
              ),
              Icon(
                Icons.person, 
                color: Color.fromARGB(255, 86, 45, 112),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
