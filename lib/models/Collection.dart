import 'package:photography_app/models/Post.dart';

class Collection{
  final String name;
  final String thumbnail;
  final List<String> tags;
  final List<Post> posts;

  Collection({this.name, this.thumbnail, this.tags, this.posts});
}