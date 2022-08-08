import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:restapicomments/commponents/commentstile.dart';
import 'package:restapicomments/models/Comments.dart';

class MyComments extends StatefulWidget {
  const MyComments({Key? key}) : super(key: key);

  @override
  State<MyComments> createState() => _MyCommentsState();
}

class _MyCommentsState extends State<MyComments> {
  List<Comments> comments=[];
  
  Future<List<Comments>> getComment() async{
    final response=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
    if(response.statusCode==200){
    final result=jsonDecode(response.body.toString());
    for(Map i in result){
      comments.add(Comments.fromJson(i));
    }
    return comments;
        }
    else
      {
        return comments;
      }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder(
          future: getComment(),
          builder: (context,snapshot){
            if(!snapshot.hasData){
                return Center(child: Text('Loading'));
            }
            else{
              return ListView.builder(itemBuilder: (context,index){
                return CommentsTile(comment: comments[index].body,icon: Icons.comment,);
              },itemCount: comments.length,);
            }
          },
        ),
      ),
    );
  }
}
