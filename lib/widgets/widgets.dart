import 'dart:ui';
import 'package:photography_app/pages/SinglePost.dart';
import 'package:photography_app/pages/SingleUser.dart';
import 'package:flutter/material.dart';
import 'package:photography_app/helper/colorsys.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:photography_app/data/Sample.dart';
import 'package:photography_app/models/Post.dart';

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
          padding: EdgeInsets.only(left: 20, right: 3, top: 3, bottom: 3),
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
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(Icons.search, color: Colors.white),
                color: Colorsys.orange,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget makePost(Post post, context) {
  return Container(
    margin: EdgeInsets.only(bottom: 30),
    child: Column(
      children: <Widget>[
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SingleUser(
                          user: post.user,
                        )));
          },
          child: Row(
            children: <Widget>[
              Hero(
                transitionOnUserGestures: true,
                tag: post.user.username,
                child: CircleAvatar(
                  backgroundImage: AssetImage(post.user.profilePicture),
                  maxRadius: 28,
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      post.user.name,
                      style: TextStyle(
                        color: Colorsys.darkGray,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          post.location,
                          style: TextStyle(
                            color: Colorsys.grey,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          post.dateAgo,
                          style: TextStyle(
                            color: Colorsys.grey,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: 300,
          padding: EdgeInsets.only(top: 20),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: post.photos.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SinglePost(post: post,image: post.photos[index],)));
                },
                              child: AspectRatio(
                  aspectRatio: 1.2 / 1,
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(post.photos[index]),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: Colorsys.orange,
                    ),
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            margin: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                ClipRect(
                                  child: BackdropFilter(
                                    filter:
                                        ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                                    child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                          color:
                                              Colors.grey[600].withOpacity(0.1)),
                                      child: Center(
                                          child: Image.asset(
                                              'assets/icons/link.png')),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ClipRect(
                                  child: BackdropFilter(
                                    filter:
                                        ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                                    child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                          color:
                                              Colors.grey[600].withOpacity(0.1)),
                                      child: Center(
                                          child: Image.asset(
                                              'assets/icons/heart.png')),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    ),
  );
}

Widget makeRelatedPhotos(Post post) {
  return StaggeredGridView.countBuilder(
    crossAxisCount: 4,
    itemCount: post.relatedPhotos.length,
    mainAxisSpacing: 10.0,
    crossAxisSpacing: 10.0,
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemBuilder: (context, index) => Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(post.relatedPhotos[index])),
          color: Colors.green),
    ),
    staggeredTileBuilder: (int index) =>
        StaggeredTile.count(2, index.isEven ? 3 : 2),
  );
}
