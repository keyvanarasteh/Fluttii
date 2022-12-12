// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_odev/pages/util/Exercise_tile.dart';
import 'package:flutter_odev/pages/util/emoticon_face.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue[800],
    bottomNavigationBar: BottomNavigationBar(items: [

      BottomNavigationBarItem(icon: Icon(Icons.home),
      label: ''),  BottomNavigationBarItem(icon: Icon(Icons.home),
      label: ''),  BottomNavigationBarItem(icon: Icon(Icons.message),
           label: ''),  BottomNavigationBarItem(icon: Icon(Icons.person),
      label: ''),
      
    ]),
    body: SafeArea(
      child: Column(children: [
      Column(children: [  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal :25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, Keyvan!',
                style: TextStyle(
                  color:Colors.white ,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  ),
                
                ),
                SizedBox(height: 8,
                
                ),
                Text('13 Nov ,2022',
                style: TextStyle(color:Colors.blue[100]),
                )
              ],
            ),
          ),
        Container(
          decoration: BoxDecoration(color: Colors.blue[600],
          borderRadius: BorderRadius.circular(12),
          ),
        padding: EdgeInsets.all(12),
          child: Icon(Icons.notifications,
          color: Colors.white,
          ),
        )
        ],
       
      ),
      SizedBox(height: 25,),
      Container(
        decoration: BoxDecoration(color: Colors.blue[600],
        borderRadius:  BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(12),
         child: Row(children: [
          Icon(Icons.search,color:Colors.white,
        ),
        SizedBox(width: 5,),
      Text(
        'Search',
        style: TextStyle(color: Colors.white),
      
      ),
      ]),
      ),
       SizedBox(height: 25,),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
                    'How do you feel?',
                  style: TextStyle(
                    color:Colors.white ,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    ),
                  
                  ),
                  Icon(Icons.more_horiz
                  ,color: Colors.white, 
                  ),
        ],
      ), 
       SizedBox(width: 5,
       ),
       Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly , children: [


Column(
  children: [
      EmotionFace(emoticonFace: '😩',),
      SizedBox(height: 8,),
      Text('Bad',style: TextStyle(color: Colors.white),),
      
  ],
),
Column(
  children: [
      EmotionFace(emoticonFace: '🙂',),
      SizedBox(height: 8,),
      Text('Fine',style: TextStyle(color: Colors.white),),
      
  ],
),

Column(
  children: [
      EmotionFace(emoticonFace: '😄',),
      SizedBox(height: 8,),
      Text('Well',style: TextStyle(color: Colors.white),),
      
  ],
),
Column(
  children: [
      EmotionFace(emoticonFace: '🥳️',),
      SizedBox(height: 8,),
      Text('Excellent',style: TextStyle(color: Colors.white),),
      
  ],
),


       ],
       
       ),],),
       SizedBox(height: 25,),
       Expanded(
         child: Container(
          padding: EdgeInsets.all(25),
          color: Colors.grey[100],
          child: Center(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Exercises",
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 20,
                  ),
                  ),
                  Icon(Icons.more_horiz),
                ],
              ) ,
             SizedBox(height: 20,),
             Expanded(
               child: ListView(children: [
                ExerciseTile(icon: Icons.favorite,
                exerciseName: 'Speaking Skills',
                numberOfExercises: 16,
                Color: Colors.orange,
               ),
                      ExerciseTile(icon: Icons.person,
                exerciseName: 'Reading Skills',
                numberOfExercises: 8,
                Color: Colors.pink
                  ),
                         ExerciseTile(icon: Icons.star,
                exerciseName: 'Writing Skills',
                numberOfExercises: 20,
                
                Color: Colors.blue
                 ),
               ],),
             )
            
            ]
            ),
          ),
          
         ),
       )
      ]
      ),
    ),
    
    );
  }
}
