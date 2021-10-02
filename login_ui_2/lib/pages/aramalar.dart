import 'package:flutter/material.dart';
import 'package:login_ui_2/models.dart/aramalar_models.dart';

class Aramalar extends StatefulWidget {
  Aramalar({Key? key}) : super(key: key);

  @override
  _AramalarState createState() => _AramalarState();
}

class _AramalarState extends State<Aramalar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:ListView.builder(
       itemCount:aramaVerisi.length,
       itemBuilder:(context,index)=>Column(
         children: [
           ListTile(
             leading:CircleAvatar(
               backgroundImage:NetworkImage(aramaVerisi[index].aramaUrl)),
              
             
             title:Text(aramaVerisi[index].aramaName,style:TextStyle(fontWeight:FontWeight.bold),),
             subtitle:Row(
               children: [
                 Icon(aramaVerisi[index].icons1,size:18.0,color:Color(0xff128C7E),),
                 SizedBox(width:7.0,),
                 Text(aramaVerisi[index].aramaDate),
               ],
             ),
             trailing:Icon(aramaVerisi[index].icons2,color:Color(0xff128C7E),),
           )
         ],
       )),
        floatingActionButton: FloatingActionButton(
             onPressed: () {}, 
            backgroundColor:Color(0xff128C7E),
             child: Icon(Icons.add_ic_call,size:25.0,),
             ),
    );
  }
}