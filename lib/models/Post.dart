import 'package:photography_app/models/User.dart';


class Post{
  final User users;
  final String location;
  final String dateAgo;
  final List<String> photo;
  final List<String> relatedphoto;

  Post(this.users, this.location, this.dateAgo, this.photo, this.relatedphoto);
}