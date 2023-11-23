import 'package:flutter/material.dart';


class SingleProduct extends StatelessWidget {
 final String imageUrl;
 final double price;
 final String name;
 SingleProduct({required this.imageUrl,required this.name,required this.price});


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 250,
        width: 180,
        child: Column(
          children: <Widget>[
            Container(
              padding:EdgeInsets.symmetric(vertical: 10) ,
              child: Container(
                height: 160,
                width: 140,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                   // image: NetworkImage(imageUrl)
                  image:AssetImage("images/$imageUrl")
                  ),
                ),
              ),
            ),
            Text(
              "\$ ${price.toString()}",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color(0xff9b96d6)),
            ),
            Text(
              name,
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }

}

