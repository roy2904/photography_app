import 'package:flutter/material.dart';
import 'package:photography_app/helper/colorsys.dart';

Widget SearchBox() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 20),
        Text(
          'Best place to \nFind awesome photos',
          style: TextStyle(
              color: Colorsys.darkGray,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30),
        Container(
          height: 50,
          padding: EdgeInsets.only(left: 20, right: 3,top: 3,bottom: 3),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colorsys.darkGray),
                    hintText: 'Search for photos',
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                elevation: 0,
                minWidth: 50,
                height: double.infinity,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Icon(Icons.search,color: Colors.white),
                color: Colorsys.orange,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget makePost(){
  
}
