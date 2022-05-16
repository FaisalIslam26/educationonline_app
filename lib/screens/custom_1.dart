import 'package:flutter/material.dart';
import 'package:test1_app/containts.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    required this.image,
    required this.title,
    Key? key,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 300,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Card(
        color: Colors.yellow,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: GridTile(
          child: Column(
            children: [
              Image.asset(
                image,
                scale: 5,
                height: 40,
              ),
            ],
          ),
          footer: GridTileBar(
            title: Text(
              title,
              style: Kcardtitle,
            ),
          ),
        ),
      ),
    );
  }
}
