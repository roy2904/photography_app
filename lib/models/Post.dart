import 'package:photography_app/models/User.dart';


class Post{
  final User user;
  final String location;
  final String dateAgo;
  final List<String> photos;
  final List<String> relatedPhotos;

  Post({this.user, this.location, this.dateAgo, this.photos, this.relatedPhotos});
}