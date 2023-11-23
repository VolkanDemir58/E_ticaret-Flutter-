import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/sayfalar/detailscreen.dart';
import 'package:untitled/sayfalar/home.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  Widget _buildSingleCartProduct(){
    return  Container(
      height: 170,
      width:double.infinity ,
      child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height:160 ,
                    width: 130,
                    decoration: BoxDecoration(
                        image:DecorationImage(
                            fit:BoxFit.fill ,
                            image: AssetImage("images/samsung_watch.jpg"))
                    ),
                  ),
                  Container(
                    height: 140,
                    width:200,
                    child: ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Samsung Akıllı Saat ",style: TextStyle(fontWeight: FontWeight.bold,),),
                          Text("Giyilebilir Teknoloji"),
                          Text("\$150.00".toString(),style: TextStyle(color:Color(0xff9b96d6),fontWeight:FontWeight.bold ),),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
      ),
    );
  }
  Widget _buildCartProduct(){
    return  Container(
      height: 170,
      width:double.infinity ,
      child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height:160 ,
                    width: 130,
                    decoration: BoxDecoration(
                        image:DecorationImage(
                            fit:BoxFit.fill ,
                            image: AssetImage("images/samsung_watch.jpg"))
                    ),
                  ),
                  Container(
                    height: 140,
                    width:200,
                    child: ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Samsung Akıllı Saat",style: TextStyle(fontWeight: FontWeight.bold,),),
                          Text("X firmasından sıfır saat "),
                          Text("\$145.48".toString(),style: TextStyle(color:Color(0xff9b96d6),fontWeight:FontWeight.bold ),),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
      ),
    );
  }
  Widget _buildsProduct(){
    return  Container(
      height: 170,
      width:double.infinity ,
      child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height:160 ,
                    width: 130,
                    decoration: BoxDecoration(
                        image:DecorationImage(
                            fit:BoxFit.fill ,
                            image: AssetImage("images/samsung_watch.jpg"))
                    ),
                  ),
                  Container(
                    height: 140,
                    width:200,
                    child: ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Samsung Smart Watch 5 ",style: TextStyle(fontWeight: FontWeight.bold,),),
                          Text(""),
                          Text("\$173.65".toString(),style: TextStyle(color:Color(0xff9b96d6),fontWeight:FontWeight.bold ),),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
      ),
    );
  }
  Widget _buildesProduct(){
    return  Container(
      height: 170,
      width:double.infinity ,
      child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height:160 ,
                    width: 130,
                    decoration: BoxDecoration(
                        image:DecorationImage(
                            fit:BoxFit.fill ,
                            image: AssetImage("images/samsung_watch.jpg"))
                    ),
                  ),
                  Container(
                    height: 140,
                    width:200,
                    child: ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Samsung Smart Watch 5 ",style: TextStyle(fontWeight: FontWeight.bold,),),
                          Text("Y sitesin'de aradığını"),
                          Text("\$176.65".toString(),style: TextStyle(color:Color(0xff9b96d6),fontWeight:FontWeight.bold ),),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Get.to(() => HomePage());
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          _buildSingleCartProduct(),
          _buildCartProduct(),
          _buildsProduct(),
          _buildesProduct()

        ],
      )
    );
  }
}
