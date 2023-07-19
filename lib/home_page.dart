import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images=[
    "assets/img1.jpg",
    "assets/img.jpg",
    "assets/img2.jpg",
  ];
  List textes=[
    "France",
    "Turkey",
    "Spain",
  ];

  List textes1=[
    "Paris",
    "Istanbul",
    "Madrid",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(top:30, right: 10,left:10,),
        child: Column(children: [
          Row(children: [
            Container(
               width:40,
               height: 40,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image:AssetImage("assets/woman.jpg"),
                  fit:BoxFit.cover
                )
               ),),
               SizedBox(width:5),
               Text("Hi, Goran", style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
               Expanded(child: Container()),
               Container(
                width: 40,
                height:40,
                decoration: BoxDecoration(
                  color: Colors.white,
                   boxShadow: [
                        BoxShadow(
                        blurRadius:10,
                        offset:Offset(5,9) ,
                        color: Colors.black.withOpacity(0.5)
                        ),],
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(Icons.notifications, color:Colors.black),)
          ],),
          SizedBox(height: 20,),
           Row(
             children: [
               Text("Find Places For Your", style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
             ],
           ),
           Row(
             children: [
               Text("Best Dream", style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
             ],
           ),
           SizedBox(height: 20,),
           Row(children: [
             Container(
                      width:300,
                      height:50,
                      decoration: BoxDecoration(color:Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                        blurRadius:10,
                        offset:Offset(5,9) ,
                        color: Colors.black.withOpacity(0.5)
                        ),]
                      ),
                      child: TextField(
                      decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search,color: Colors.black,),
                      hintText: 'search for place',
                      border: InputBorder.none),
                      
                              ),
             ),
             SizedBox(width: 25,),
             Container(
                width: 35,
                height:35,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(10),
                  color: Colors.lightBlue
                ),
              child:Icon(Icons.settings,color:Colors.white) ,),
           ],),
              SizedBox(height: 20,),
              Row(children: [
                 Text("Famous Places", style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
                Expanded(child: Container(),),
                  Text("see all", style:TextStyle(color: Colors.lightBlue,fontSize: 20)),
              ],),
               SizedBox(height: 15,),
              Container(
                width: double.maxFinite,
                height: 220,
                  padding:const EdgeInsets.only(bottom:5),
                child: ListView.builder(
                   itemCount: 3,
                   scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context,int index){
                    return InkWell(
                      onTap:(){
                        Get.to(DetailPage(), arguments:[ images[index], textes[index], textes1[index]]);
                      },
                      child: Container(
                        width: 160,
                        height:190 ,
                        margin:const EdgeInsets.only(left:15, bottom:5),
                        padding:const EdgeInsets.only(top:5,left:5, right:5),
                        decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(15),
                          color:Colors.white,
                          boxShadow: [
                          BoxShadow(
                          blurRadius:10,
                          offset:Offset(5,9) ,
                          color: Colors.black.withOpacity(0.5)
                          ),]
                        ),
                        child: Column(children: [
                       Container(
                         width: 150,
                        height:150 ,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(15),
                          image: DecorationImage(image: AssetImage(images[index]), fit:BoxFit.cover)
                        ),
                       ),
                        SizedBox(height: 8,),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                        Column(
                          children: [
                            Text(textes[index], style:TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold)),
                            Text(textes1[index], style:TextStyle(color: Colors.black,fontSize: 10)),
                          ],
                        ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.lightBlue
                            ),
                            child: Center(child: Icon(Icons.favorite_border,color:Colors.white)),)
                        ],)
                        ]),),
                    );
                  })
                ,),
                 SizedBox(height: 18,),
            Row(children: [
                Text("Top Destinations", style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
                Expanded(child: Container(),),
                  Text("see all", style:TextStyle(color: Colors.lightBlue,fontSize: 20)),
            ],),
              SizedBox(height: 10,),
            Container(
                width: double.maxFinite,
                height: 180,
                  padding:const EdgeInsets.only(bottom:5),
                child: ListView.builder(
                  itemCount: 3,
                   scrollDirection: Axis.horizontal,
                  itemBuilder:  (BuildContext context,int index){
                    return Container(
                     width: 180,
                      height:90,
                       margin:const EdgeInsets.only(left:15, bottom:8),
                      padding:const EdgeInsets.only(left:5, right:5),
                      decoration:BoxDecoration(color:Colors.white,
                       borderRadius:BorderRadius.circular(15),
                        boxShadow: [
                        BoxShadow(
                        blurRadius:10,
                        offset:Offset(5,9) ,
                        color: Colors.black.withOpacity(0.5)
                        ),]),
                     child:Row(
                      children: [
                      Container(
                      width: 100,
                      height:100 ,
                      decoration: BoxDecoration(
                         borderRadius:BorderRadius.circular(15),
                        image:DecorationImage(image: AssetImage(images[index]), fit:BoxFit.cover)
                      ),
                      ),
                      SizedBox(width: 15,),
                      Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                        Text(textes[index], style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                        SizedBox(height: 5,),
                         Text("Europe", style:TextStyle(color: Colors.grey,fontSize: 15)),
                      ],),
                     ],)
                    );
                  }),
            ),
        ],) ),
    );
  }
}