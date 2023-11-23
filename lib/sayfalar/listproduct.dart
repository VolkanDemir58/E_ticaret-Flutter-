import 'package:flutter/material.dart';
import 'package:untitled/sayfalar/home.dart';
import 'package:untitled/widgets/singeproduct.dart';

class listProduct extends StatelessWidget {
  final String name;
  listProduct({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (ctx) => HomePage()
            ),
          );
        }, icon: Icon(Icons.arrow_back,color:Colors.black,)),
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color:Colors.black,)),
          IconButton(onPressed:(){}, icon: Icon(Icons.notifications_none,color:Colors.black,))
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            Column(
              children: <Widget>[
                Container(
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
               SizedBox(height: 10,),
               Container(
                 height:700,
                 child: GridView.count(
                   crossAxisCount:2,
                   mainAxisSpacing: 10,
                   childAspectRatio: 0.7,
                   scrollDirection: Axis.vertical,
                   children:<Widget> [
                   SingleProduct(
                       imageUrl: "redmi.jpg",
                       price: 250.50,
                       name: "Xiaomi Redmi Mi 9"),
                   SingleProduct(
                       imageUrl: "samsung_watch.jpg",
                       price: 321.00,
                       name: "Samsung Smart Watch"),
                   SingleProduct(
                       imageUrl: "huawei_watch.png",
                       price: 423.00,
                       name: "Huwaei Smart Watch"),
                   SingleProduct(
                       imageUrl: "monster_abra.png",
                       price: 857.00,
                       name: "Monster Abra A5"),
                   SingleProduct(
                       imageUrl: "monitor.jpg",
                       price: 183.07,
                       name: "LG Monitör"),
                   SingleProduct(
                       imageUrl: "samsung_watch.jpg",
                       price: 321.00,
                       name: "Samsung Smart Watch")
                 ],),
               )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
