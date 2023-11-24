import 'package:abc/button.dart';
import 'package:abc/colors.dart';
import 'package:abc/components/food_tile.dart';
import 'package:abc/home/fooddeatails.dart';
import 'package:abc/modeuls/food.dart';
import 'package:flutter/material.dart';

class menu_page extends StatefulWidget {
  const menu_page({super.key});

  @override
  State<menu_page> createState() => _menu_pageState();
}

class _menu_pageState extends State<menu_page> {
  // food menu
  List foodmenu = [
    food(
        name: "salmoan sushi",
        price: "2100",
        imagepath: "assets/sushi (2).png",
        rating: "4.9"),
    food(
        name: "tuna",
        price: "2300",
        imagepath: "assets/tuna.png",
        rating: "4.3"),

         food(
        name: "salmoan sushi",
        price: "2100",
        imagepath: "assets/sushi (2).png",
        rating: "4.9"),
         food(
        name: "salmoan sushi",
        price: "2100",
        imagepath: "assets/sushi (2).png",
        rating: "4.9"), food(
        name: "salmoan sushi",
        price: "2100",
        imagepath: "assets/sushi (2).png",
        rating: "4.9"),
  ];

  void navigateToFoodDetais(int index){
    Navigator.push(context,
     MaterialPageRoute(builder:(context) => fooddetailspage(), ),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          "Tokyo",
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: primarycolor, borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Get 32% Promo",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    mybutton(
                      text: "Reedem",
                      onTap: () {},
                    ),
                  ],
                ),
                Image.asset("assets/sushi (1).png", height: 100),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                //  (border: OutlineInputBorder(

                //   borderSide: BorderSide(color: Colors.white,),

                //   borderRadius: BorderRadius.circular(20),
                //  ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),hintText: "serach here....",
              ),
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "food menu",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                  fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child:ListView.builder(scrollDirection: Axis.horizontal,
                  
                  itemCount: foodmenu.length,
                  itemBuilder: (context,index)=>foodtile(
              
                    Food: foodmenu[index],
                    onTap: () => navigateToFoodDetais(index),




                  ),),
          ),
          const SizedBox(height: 25,),
          Container(decoration: BoxDecoration(color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.only(left: 25,right: 25,bottom: 25),
           padding: EdgeInsets.all(20),


            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              
              children: [Row(children:[
                 Image.asset("assets/fish-eggs.png"
                          ,height: 30,),
              
            SizedBox(width: 20,),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              
              
              children:
            
            
             [Text("salmon eggs",
             style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 18),
            
            
            
            
            ),
            
            Text('\$21.00',style: TextStyle(
              color: Colors.grey[700]),),
            
            
            
            ],),
            Icon(Icons.favorite_outline,color: Colors.grey,size: 28,)
            
            
            
            ],),
        ])),
            
        ],
      ),
    );
  }
}
