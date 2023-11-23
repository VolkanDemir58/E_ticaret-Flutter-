import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/yanoption/Bizeulasin.dart';
import 'package:untitled/yanoption/ayarlar.dart';
import 'package:untitled/yanoption/bilgilendirme.dart';
import 'package:untitled/sayfalar/detailscreen.dart';
import 'package:untitled/sayfalar/home.dart';
import 'package:untitled/sayfalar/listproduct.dart';
import 'package:untitled/widgets/singeproduct.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../model/product.dart';
import 'home.dart';

Future<void> getData() async {
  final querySnapshot =
      await FirebaseFirestore.instance.collection('myCollection').get();
  final data =
      querySnapshot.docs.firstWhere((doc) => doc.exists, orElse: () => null!);
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

Product? mobiledata;
Product? watchdata;
//Product? saatdata;
//Product? laptopdata;
//Product? monitordata;
// Product? hsaatdata;

class _HomePageState extends State<HomePage> {
  Widget _buildCategoryProduct(String image) {
    return CircleAvatar(
      maxRadius: 45,
      backgroundColor: Color(0xff33dcfd),
      child: Container(
        height: 40,
        child: Image(
          image: AssetImage("images/$image"),
        ),
      ),
    );
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  bool homeColor = false;
  bool infoColor = false;
  bool phoneColor = false;
  bool settingsColor = false;

  Widget _buildMyDrawer() {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Volkan Demir",
              style: TextStyle(color: Colors.black),
            ),
            decoration: BoxDecoration(color: Color(0xfff2f2f2)),
            accountEmail: Text(
              "volkan1@gmail.com",
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
              selected: homeColor,
              onTap: () {
                setState(() {
                  homeColor = true;
                  phoneColor = false;
                  settingsColor = false;
                  infoColor = false;
                });
              },
              leading: Icon(
                Icons.home,
              ),
              title: Text("Home")),
          ListTile(
              selected: infoColor,
              onTap: () {
                Get.to(() => Bilgilendirme());
                setState(() {
                  infoColor = true;
                  phoneColor = false;
                  settingsColor = false;
                  homeColor = false;
                });
              },
              leading: Icon(
                Icons.info,
              ),
              title: Text("Bilgilendirme")),
          ListTile(
              selected: phoneColor,
              onTap: () {
                Get.to(() => ContextPage());
                setState(() {
                  phoneColor = true;
                  infoColor = false;
                  settingsColor = false;
                  homeColor = false;
                });
              },
              leading: Icon(
                Icons.phone,
              ),
              title: Text("Bize Ulaşın")),
          ListTile(
              selected: settingsColor,
              onTap: () {
                Get.to(() => SettingsScreen());
                setState(() {
                  settingsColor = true;
                  phoneColor = false;
                  homeColor = false;
                  infoColor = false;
                });
              },
              leading: Icon(
                Icons.settings,
              ),
              title: Text("Ayarlar")),
          ListTile(
              onTap: () {
                FirebaseAuth.instance.signOut();
              },
              leading: Icon(
                Icons.exit_to_app,
              ),
              title: Text("Çıkış"))
        ],
      ),
    );
  }

  Widget _buildImageSlider() {
    return Container(
      height: 240,
      child: Carousel(
        autoplay: true,
        showIndicator: false,
        dotSize: 20,
        images: [
          AssetImage("images/huawei_watch.png"),
          AssetImage("images/monitor.jpg"),
          AssetImage("images/monster_abra.png"),
        ],
      ),
    );
  }

  Widget _buildCategory() {
    return Column(
      children: [
        Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Kategoriler",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "Tümünü gör",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          height: 60,
          child: Row(
            children: [
              _buildCategoryProduct("redmi.jpg"),
              _buildCategoryProduct("samsung_watch.jpg"),
              _buildCategoryProduct("monster_abra.png"),
              _buildCategoryProduct("huawei_watch.png"),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildOzellik() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Önerilenler",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (ctx) => listProduct(
                          name: "Önerilenler",
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "Tümünü gör",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (ctx) => DetailScreen(
                        SingleProduct(
                          imageUrl: "redmi.jpg",
                          price: 933.07,
                          name: "Xiaomi Redmi Mi 9",
                        ),
                      ),
                    ),
                  );
                },
                child: SingleProduct(
                  imageUrl: "redmi.jpg",
                  price: 933.07,
                  name: "Xiaomi Redmi Mi 9",
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (ctx) => DetailScreen(
                        SingleProduct(
                          imageUrl: "redmi.jpg",
                          name: "Galaxy Watch5 Bluetooth",
                          price: 150.50,
                        ),
                      ),
                    ),
                  );
                },
                child: SingleProduct(
                  imageUrl: "samsung_watch.jpg",
                  name: "Galaxy Watch5 Bluetooth",
                  price: 250.5,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildArsiv() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Göz Atmak İstiycekleriniz",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (ctx) => listProduct(
                          name: "Önerilenler",
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "Tümünü gör",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (ctx) => DetailScreen(
                        SingleProduct(
                          imageUrl: "redmi.jpg",
                          price: 933.07,
                          name: "Xiaomi Redmi Mi 9",
                        ),
                      ),
                    ),
                  );
                },
                child: SingleProduct(
                  imageUrl: "monster_abra.png",
                  price: 1233.29,
                  name: "Monster Abra A5 V.17.1.2",
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (ctx) => DetailScreen(
                        SingleProduct(
                          imageUrl: "redmi.jpg",
                          name: "Galaxy Watch5 Bluetooth",
                          price: 150.50,
                        ),
                      ),
                    ),
                  );
                },
                child: SingleProduct(
                  imageUrl: "monitor.jpg",
                  name: "LG Monitör",
                  price: 289.7,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (ctx) => DetailScreen(
                        SingleProduct(
                          imageUrl: "redmi.jpg",
                          name: "Galaxy Watch5 Bluetooth",
                          price: 150.50,
                        ),
                      ),
                    ),
                  );
                },
                child: SingleProduct(
                  imageUrl: "huawei_watch.png",
                  name: "Huawei Watch ",
                  price: 423.0,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: _buildMyDrawer(),
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.grey[100],
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {
            _key.currentState!.openDrawer();
          },
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {}, color: Colors.black, icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {},
              color: Colors.black,
              icon: Icon(Icons.notifications_none)),
        ],
      ),
      body: FutureBuilder(
          future: FirebaseFirestore.instance
              .collection("product")
              .doc("GX1pwyNxMtAbddGEXmMH")
              .collection("featurproduct")
              .get(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            /* mobiledata = Product(
                image: snapshot.data!.docs[0]["image"],
                name: snapshot.data!.docs[0]["name"],
                price: snapshot.data!.docs[0]["image"],);*/

            return Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _buildImageSlider(),
                      _buildCategory(),
                      SizedBox(
                        height: 20,
                      ),
                      _buildOzellik(),
                      _buildArsiv(),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
