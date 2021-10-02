//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:login_ui_2/models.dart/durum_models.dart';

class Durum extends StatefulWidget {
  Durum({Key? key}) : super(key: key);

  @override
  _DurumState createState() => _DurumState();
}

class _DurumState extends State<Durum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Column(
          children: [
           SizedBox(height:10.0),
           ListTile(
            
             leading:Stack(
               children: [
                 Image.network("https://cdn-icons-png.flaticon.com/512/847/847969.png",width:80.0,),
                 Positioned(
                   bottom:2.0,
                   right:10.0,
                   child:Container(
                     width:20.0,height:20.0,
                     decoration:BoxDecoration(
                       color:Color(0xfff5f5f5),
                       borderRadius:BorderRadius.circular(10.0)
                     ),
                    
                     child: Icon(Icons.add_circle_outlined,color:Color(0xff128C7E),size:24.0,)))
               ],
             ),
             title:Text("Durumum",style:TextStyle(color:Colors.black87,fontWeight:FontWeight.bold),),
             subtitle:Text("Durum güncellemesi eklemek için dok...",style:TextStyle(color:Colors.grey),),
           ),
           Padding(
             padding: const EdgeInsets.only(right:190.0,top:20.0),
             child: Text("Görülen güncellemeler",style:TextStyle(color:Colors.grey.shade700,fontSize:15.0),),
           ),SizedBox(height:10.0,),
           ListTile(
             leading:CircleAvatar(
               backgroundColor:Colors.grey,
               backgroundImage:NetworkImage(durumVerisi[0].statusUrl),
             ),
            title:Text(durumVerisi[0].statusName,style:TextStyle(color:Colors.black87)),
            subtitle:Text(durumVerisi[0].statusDate),
          
           ),
           ListTile(
             leading:CircleAvatar(
               backgroundColor:Colors.grey,
               backgroundImage:NetworkImage(durumVerisi[1].statusUrl),
             ),
             title:Text(durumVerisi[1].statusName,style:TextStyle(color:Colors.black87),),
             subtitle:Text(durumVerisi[1].statusDate),
           ),
                  ],
          
        ),
        
      
    
      ),
       floatingActionButton: FloatingActionButton(
             onPressed: () {}, 
            backgroundColor:Color(0xff128C7E),
             child: Icon(Icons.photo_camera,size:25.0,),
             ),
       
    );
    
  }
}