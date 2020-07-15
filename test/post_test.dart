import 'package:flutter_test/flutter_test.dart';
import 'package:posts/models/Post.dart';
import 'package:posts/models/User.dart';


void main(){
  test('list posts', (){
    Post post = Post();
    expect(post.getAll() is Future<List<Post>>, true);
  });
  test('get user', (){
    User user = User();
    expect(user.getUser(1) is Future<User>, true);
  });
}