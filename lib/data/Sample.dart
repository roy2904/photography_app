import 'package:flutter/material.dart';
import 'package:photography_app/models/Collection.dart';
import 'package:photography_app/models/Post.dart';
import 'package:photography_app/models/User.dart';

class Sample {
   static User sharon = new User(
    name: "Sharon Garcia",
    username: "@sharongarcia",
    followers: 400,
    following: 190,
    profilePicture: "assets/users/sharon-garcia.jpg",
    collocation: [
      new Collection(
        name: "Photography",
        tags: [
          "HD Photos",
          "Street",
          "Photography"
        ],
        thumbnail: "assets/photos/1.jpg",
        posts: [
          new Post(
            location: "United States Of America",
            dateAgo: "3 min ago",
            photos: [
              'assets/photos/1.jpg',
              'assets/photos/2.jpg',
              'assets/photos/3.jpg',
            ]
          ),
          new Post(
            location: "Chicago, Illinois",
            dateAgo: "2 week ago",
            photos: [
              'assets/photos/6.jpg',
              'assets/photos/8.jpg',
              'assets/photos/7.jpg',
            ]
          )
        ]
      ),
      new Collection(
        name: "Photography",
        tags: [
          "HD Photos",
          "Nature",
          "Photography"
        ],
        thumbnail: "assets/photos/5.jpg",
        posts: [
          new Post(
            location: "london, United Kingdom",
            dateAgo: "3 min ago",
            photos: [
              'assets/photos/1.jpg',
              'assets/photos/2.jpg',
              'assets/photos/3.jpg',
            ]
          ),
          new Post(
            location: "Scotland, United Kingdom",
            dateAgo: "2 week ago",
            photos: [
              'assets/photos/6.jpg',
              'assets/photos/8.jpg',
              'assets/photos/2.jpg',
            ]
          )
        ]
      ),
    ]
  );

  static User alireza = new User(
    name: "Alireza Esmaeeli",
    username: "@alireza.es",
    followers: 400,
    following: 190,
    profilePicture: "assets/users/alireza-esmaeeli.jpg",
    collocation: [
      new Collection(
        name: "Photography",
        tags: [
          "HD Photos",
          "Weather",
          "Photography"
        ],
        thumbnail: "assets/photos/2.jpg",
        posts: [
          new Post(
            location: "United States Of America",
            dateAgo: "3 min ago",
            photos: [
              'assets/photos/5.jpg',
              'assets/photos/6.jpg',
              'assets/photos/8.jpg',
            ]
          ),
          new Post(
            location: "Chicago, Illinois",
            dateAgo: "2 week ago",
            photos: [
              'assets/photos/6.jpg',
              'assets/photos/8.jpg',
              'assets/photos/2.jpg',
            ]
          )
        ]
      ),
    ]
  );

  static Post postOne = new Post(
    user: sharon,
    location: "Chicago, Illinois",
    dateAgo: "3 min ago",
    photos: [
      'assets/photos/1.jpg',
      'assets/photos/2.jpg',
      'assets/photos/3.jpg'
    ],
    relatedPhotos: [
      'assets/photos/4.jpg',
      'assets/photos/5.jpg',
      'assets/photos/6.jpg',
      'assets/photos/7.jpg',
      'assets/photos/8.jpg'
    ]
  );

  static Post postTwo = new Post(
     user: alireza,
    location: "Kabul, Afghanistan",
    dateAgo: "3 min ago",
    photos: [
      'assets/photos/4.jpg',
      'assets/photos/5.jpg',
      'assets/photos/6.jpg',
    ],
    relatedPhotos: [
      'assets/photos/1.jpg',
      'assets/photos/2.jpg',
      'assets/photos/3.jpg',
      'assets/photos/4.jpg',
      'assets/photos/5.jpg'
    ]
  );
}