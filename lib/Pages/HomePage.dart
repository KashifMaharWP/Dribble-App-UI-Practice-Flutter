import 'package:flutter/material.dart';

import '../utill/EmojiWidget.dart';
import '../utill/ExerciseWidget.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue[700],
      appBar: null,
      body: SafeArea(
        child: Column(
          children: [
            //Name and Icon
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  //Name Details Icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hi, Kashif!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          Text('10, March, 2023',
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 16,

                            ),
                          ),
                        ],
                      ),
                      //Bell Icon
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.blue[400],
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Icon(Icons.add_alert, color: Colors.white,),

                      )
                    ],
                  ),
                  SizedBox(height: 18,),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue[400],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(children: [
                      Icon(Icons.search,color: Colors.white,),
                      SizedBox(width: 5,),
                      Text('Search',
                      style: TextStyle(
                       color: Colors.white,

                      ),
                      ),
                    ],),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('How do you feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.more_horiz,color: Colors.white,),
                    ],
                  ),
                  SizedBox(height: 18,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Bad
                        Column(
                          children: [
                            EmojiWidget(Emoji: '🙁',),
                            Text('Bad',style: TextStyle(fontSize: 16,color: Colors.white),),
                          ],
                        ),
                        //Fine
                        Column(
                          children: [
                            EmojiWidget(Emoji: '🙂',),
                            Text('Fine',style: TextStyle(fontSize: 16,color: Colors.white),),
                          ],
                        ),
                        //Well
                        Column(
                          children: [
                            EmojiWidget(Emoji: '😁',),
                            Text('Well',style: TextStyle(fontSize: 16,color: Colors.white),),
                          ],
                        ),
                        //Excelent
                        Column(
                          children: [
                            EmojiWidget(Emoji: '🤩',),
                            Text('Excellent',style: TextStyle(fontSize: 16,color: Colors.white),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Excercise',
                            style: TextStyle(
                              //color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.more_horiz,color: Colors.black,),
                        ],
                      ),
                      SizedBox(height: 12,),
                      Expanded(
                        child: ListView(
                          children: [
                            ExerciseWidget(
                              icon: Icons.favorite,
                              color: Colors.orange,
                              ExerciseName: 'Speaking Skills',
                              ExcerciseNo: '16',
                            ),
                            ExerciseWidget(
                              icon: Icons.person,
                              color: Colors.green,
                              ExerciseName: 'Reading Skills',
                              ExcerciseNo: '12',
                            ),
                            ExerciseWidget(
                              icon: Icons.star,
                              color: Colors.pink,
                              ExerciseName: 'Writting Skills',
                              ExcerciseNo: '18',
                            ),
                            ExerciseWidget(
                              icon: Icons.handshake,
                              color: Colors.blueAccent,
                              ExerciseName: 'Gesture Skills',
                              ExcerciseNo: '23',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
