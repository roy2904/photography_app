import 'package:photography_app/models/Collection.dart';
class User{
    final String name;
  final String profilePicture;
  final String username;
  final int followers;
  final int following;
  final List<Collection> collocation;

  User({this.name, this.profilePicture, this.username, this.followers, this.following, this.collocation});
}