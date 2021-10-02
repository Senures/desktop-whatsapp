import 'package:flutter/material.dart';
import 'package:login_ui_2/models.dart/sohbet_model.dart';

class Sohbetler extends StatefulWidget {
  Sohbetler({Key? key}) : super(key: key);

  @override
  _SohbetlerState createState() => _SohbetlerState();
}

class _SohbetlerState extends State<Sohbetler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appBarim(),
      body:ListView.builder(
        itemCount:sohbetVerisi.length,
        itemBuilder:(context,index )=>Column(
          children: [
            Divider(
              height:15.0,
            ),
            ListTile(
              leading:CircleAvatar(
                backgroundColor:Colors.grey,
                backgroundImage:NetworkImage(sohbetVerisi[index].avatarUrl),
              ),
              title:Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Text(sohbetVerisi[index].name,style:TextStyle(color:Colors.black87,fontWeight:FontWeight.bold),),
                  Text(sohbetVerisi[index].time,style:TextStyle(color:Colors.black54),),
                ],
              ),
              subtitle:Padding(
                padding: const EdgeInsets.only(left:5.0,top:10.0),
                child: Text(sohbetVerisi[index].message),
              ),

            )
          ],

        )
    ),
     floatingActionButton: FloatingActionButton(
             onPressed: () {}, 
            backgroundColor:Color(0xff128C7E),
             child: Icon(Icons.message_rounded,size:25.0,),
             ),
    );

  }

  AppBar appBarim() {
    return AppBar(
      toolbarHeight:40.0,
      title:Text("Arşivlenmiş",style:TextStyle(color:Colors.black87,fontSize:18.0),),
      backgroundColor:Colors.white24,
      leading:Icon(Icons.archive_outlined,color:Color(0xff128C7E),),
      elevation:0.0,);
  }
}