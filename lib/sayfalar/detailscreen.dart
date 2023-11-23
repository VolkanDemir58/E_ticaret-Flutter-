import 'package:flutter/material.dart';
import 'package:untitled/sayfalar/cartscreen.dart';
import 'package:untitled/sayfalar/home.dart';
import 'package:untitled/widgets/singeproduct.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen(SingleProduct singleProduct);

  Widget _buildSizeProduct({String? name}) {
    return Container(
      height: 60,
      width: 60,
      color: Colors.grey,
      child: Center(
        child: Text(
          name!,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget _buildColorProduct({Color? color}) {
    return Container(
      height: 60,
      width: 60,
      color: color,
    );
  }

  Widget _buildImage() {
    return Center(
      child: Container(
        width: 250,
        child: Card(
          child: Container(
            padding: EdgeInsets.all(13),
            child: Container(
              height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("images/samsung_watch.jpg"),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDescription() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            child: Row(
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Galaxy Watch5 Bluetooth",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "\$150.50",
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "Açıklama :",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildText() {
    return Container(
      height: 100,
      child: Wrap(
        children: [
          Text(
            "Günün her saati, hatta geceleri bile sağlık durumunuzu takip edin. Samsung BioActive sensörle vücut kompozisyonunuzu ölçerek sağlık ve zindelik hedefinize ulaşın. Safir kristal ile daha sert ön ekran",
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
        ],
      ),
    );
  }

  Widget _buildColorPart() {
    return Column(
      children: [
        SizedBox(
          height: 1,
        ),
        Container(
          width: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildSizeProduct(name: "42mm"),
              _buildSizeProduct(name: "44mm"),
              _buildSizeProduct(name: "46mm"),
              _buildSizeProduct(name: "48mm"),
            ],
          ),
        ),
      ],
    );
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
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
      body: Container(
        child: ListView(
          children: [
            Column(
              children: [
                _buildImage(),
                _buildDescription(),
                _buildText(),
                _buildColorPart(),
                Text(
                  "Boyut",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Renk",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 260,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildColorProduct(color: Colors.grey),
                      _buildColorProduct(color: Colors.blueAccent),
                      _buildColorProduct(color: Colors.black),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartScreen()),
                    );
                  },
                  child: Text("Fiyat Listesini Gör"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
