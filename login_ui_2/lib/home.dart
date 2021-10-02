import 'package:flutter/material.dart';
import 'package:login_ui_2/pages/aramalar.dart';
import 'package:login_ui_2/pages/durum.dart';
import 'package:login_ui_2/pages/sohbetler.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  late TabController tabController;//tabcontrollerımızı tanımladık
  
  @override
  void initState() {
      super.initState();
    tabController=TabController(length:4, vsync:this);//vsync tabların gecislerindeki animasyonlar,bunun için singletick ekledik
   
  }
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
     
        backgroundColor:Color(0xff128C7E),
        title:Text("WhatsApp",style:TextStyle(color:Colors.white,fontSize:22.0),),
         bottom:tabBarim(),
         
         actions: [
          Icon(Icons.search,size:28.0,color:Colors.white),
          SizedBox(width:15.0,),
         // Icon(Icons.more_vert,size:20.0,color:Colors.white),
         IconButton(onPressed:(){}, icon:Icon(Icons.more_vert,size:20.0,color:Colors.white)),
        ],
       
      ),
      body:TabBarView(
            controller:tabController,
            children: [
            Container(
              child:Center(child: Text("Sohbetler")),
            ),
            Sohbetler(),
            Durum(),
            Aramalar(),
          ],),
         
          
               
             
          );
  }

  TabBar tabBarim() {
    return TabBar(
        controller:tabController,
        indicatorColor:Colors.white,
              tabs: [
                    Tab(
            icon:Icon(Icons.camera_alt),
          ),
          Tab(text:"SOHBETLER",),
          Tab(text:"DURUM",),
          Tab(text:"ARAMALAR",),
          
        ],
      );
      
  }
}