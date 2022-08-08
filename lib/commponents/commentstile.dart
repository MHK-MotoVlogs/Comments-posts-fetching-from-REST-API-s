import 'package:flutter/material.dart';
class CommentsTile extends StatelessWidget {

  late String comment;
  late IconData icon;
   CommentsTile({Key? key,required this.comment,required this.icon}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.deepPurpleAccent,
                blurRadius: 0.3,
                spreadRadius: 0.3,
              )
            ],
            border: Border.all(
              color: Colors.deepPurpleAccent,
            )
        ),
        child: ListTile(title: Text(comment,style: TextStyle(color: Colors.white),),leading: Icon(icon,color: Colors.white,),
        ),
      ),
    );
  }
}
