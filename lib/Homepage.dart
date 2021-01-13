import 'package:flutter/material.dart';
import 'package:photography_app/widgets/widgets.dart';
import 'helper/colorsys.dart';
import 'package:photography_app/data/Sample.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorsys.lightGrey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colorsys.lightGrey,
        leading: Icon(Icons.menu, color: Colorsys.darkGray),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchBox(),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'For You',
                    style: TextStyle(
                      color: Colorsys.darkGray,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colorsys.lightGrey),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Recommended',
                              style: TextStyle(
                                  color: Colorsys.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            Container(
                              width: 50,
                              padding: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: Colorsys.orange, width: 3),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Like',
                          style: TextStyle(
                            color: Colorsys.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  makePost(Sample.postOne,context),
                  makePost(Sample.postTwo,context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
