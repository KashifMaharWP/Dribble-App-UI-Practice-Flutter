import 'package:flutter/material.dart';

class ExerciseWidget extends StatelessWidget {
  final icon;
  final String ExerciseName;
  final String ExcerciseNo;
  final color;
  const ExerciseWidget({Key? key,
    required this.icon,
    required this.ExerciseName,
    required this.ExcerciseNo,
    required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
              color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      color: color,
                        padding: EdgeInsets.all(12),
                        child:Icon(icon,color: Colors.white,)
                    ),
                  ),
                  SizedBox(width: 8,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(ExerciseName,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 3,),
                      Text(ExcerciseNo+" Exercises",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500]

                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
