import 'package:photography_app/models/Post.dart';

class Collocation{
  final name;
  final thumbnail;
  final List<String> tags;
  final List<Post> posts;

  Collocation(this.name, this.thumbnail, this.tags, this.posts);
}