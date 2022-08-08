import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:restapicomments/commponents/commentstile.dart';
import 'package:restapicomments/models/Posts.dart';
import 'package:http/http.dart' as http;

class MyPosts extends StatelessWidget {
   MyPosts({Key? key}) : super(key: key);

  List<Posts> mypostlist=[];

  Future<List<Posts>> getPosts()async{
    final response=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if(response.statusCode==200){
      final result=jsonDecode(response.body.toString());
      for(Map i in result){
      mypostlist.add(Posts.fromJson(i));
      }
      return mypostlist;
    }
    else{
      return mypostlist;
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        child: FutureBuilder(
            future: getPosts(),
            builder: (context,snap){
          if(!snap.hasData){
            return Center(child: Text('Loading'),);
          }
          else{
            return ListView.builder(itemBuilder: (context,index){
              return CommentsTile(comment: mypostlist[index].body,icon: Icons.post_add,);
            },itemCount: mypostlist.length);
          }
        }),
      ),

    ));
  }
}
