import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>  with TickerProviderStateMixin{
   int gottenStars=4;
    var arg=Get.arguments;
  @override
  Widget build(BuildContext context) {
     TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      backgroundColor:  Colors.white,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child:Column(children: [
          Stack(children: [
            Container(
               width: double.maxFinite,
               height:300,
               color: Colors.white,

            ),
            Container(
               width: double.maxFinite,
               height:300,
               decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("${arg[0]}"), fit:BoxFit.cover),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )
               ),

            ),
            Container(
              margin: const EdgeInsets.only(top:30),
              padding: const EdgeInsets.only(right:20,left:20),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children:[
                InkWell(
                  onTap: (){
                    Get.back();
                  },
                  child: Container(
                  width:25,
                  height:25,
                  decoration:BoxDecoration(
                    color:Colors.white,
                    borderRadius:BorderRadius.circular(100)
                  ),
                  child: Icon(Icons.arrow_back,color:Colors.black,size:15)
                  ),
                ),
                 Container(
                width:25,
                height:25,
                decoration:BoxDecoration(
                  color:Colors.white,
                  borderRadius:BorderRadius.circular(100)
                ),
                child: Icon(Icons.favorite_border,color:Colors.black,size:15),
                ),
              ]),
            ),
          ],),
          Expanded(
            //width: double.maxFinite,
               //height:450,
                // padding: const EdgeInsets.only(bottom:0),
              // color: Colors.white,
               child: Column(children: [
                 TabBar(
               labelPadding: const EdgeInsets.only(left:30, right:30),
               controller: _tabController,
               labelColor:  Colors.lightBlue,
               unselectedLabelColor: Colors.grey,
               isScrollable: true,
               indicatorSize: TabBarIndicatorSize.label,
               indicatorColor: Colors.transparent,
              

              tabs: [
                Tab(text: "Overview",),
                Tab(text: "Gallery",),
                Tab(text: "Review",),
              ]),
              Container(
                 height: 400,
                 width: double.maxFinite,
                   padding: const EdgeInsets.only(bottom:0),
                child:TabBarView(
                   controller: _tabController,
                  children:[
                    Container(
                      padding: const EdgeInsets.only(right: 10,left:10, bottom:0),
                        height: 200,
                        width: double.maxFinite,
                      child: Column(children: [
                        Row(children: [
                        Text("HAGIA SOFIA:"+ "${arg[2]}"+",${arg[1]}", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 15),),
                         SizedBox(width: 10,),
                          Wrap(
                        children: List.generate(5, (index){
                          return Icon(Icons.star, color: index<gottenStars? Color(0xFFe7bb4e):Color(0xFF878593),size:15);
                        }),
                         ),
                         Text("4,4", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 15),)
                        ],),
                          SizedBox(height: 10,),
                        Text("Hagia Sophia, officially the Hagia Sophia Grand Mosque,\nmosque in istanbul, Turkey. Originally built by the eastern\nRoman emperor Justinian I as the Crestian cathedral of\nConstantinople for the state cruch of the Roman Empire\nbetween 532 and 537. and designed by the Greek geometers\nisidore of Miletrus and Anthemius of Tralles.it was formally\ncalled the Crush of the Holy Wisdom and was then the world's largest interior space and among the first to employ a fully\npendentive dome.it is considered the epitome of Byzantien."
                        ,style: TextStyle(color: Colors.grey,fontSize: 15),),
                         SizedBox(height: 10,),
                        Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(10),

                          ),
                          child: Center(
                            child: Row(children: [
                               SizedBox(width: 110,),
                              Text("Book NOW", style: TextStyle(color: Colors.white, fontSize: 15),),
                              SizedBox(width: 30,),
                              Icon(Icons.arrow_forward_ios, color: Colors.white,size: 15),
                            ]),
                          ),),
                      
                      ],),
                    ),
                    Center(child: Text("Gallery")),
                     Center(child: Text("Review")),
                  ] ) ,),
               ]),
          ),
        ],),
         ),
        );
  }
}