// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
class ExerciseTile extends StatelessWidget {
  final icon;
  final String exerciseName;
  final int numberOfExercises;
  final Color;

  const ExerciseTile({super.key,required this.icon,required this.exerciseName,required this.numberOfExercises, required this.Color});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20) ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      ClipRRect
                     (
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        padding: EdgeInsets.all(16) ,
                        color:Color ,
                        child: Icon(icon, color: Colors.white,)),
                    ),
                   SizedBox(width: 12,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text(exerciseName,style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.grey , fontSize: 14, ),),
                    Text(numberOfExercises.toString()+' Exercises')
                    ]
                    ,),
                    
                    Icon(Icons.more_horiz)
                  ]),
                ),
    );
  }
}