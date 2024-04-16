import 'package:flutter/material.dart';
import '../data/data.dart';
import 'categories_screen.dart';

class WelcomeScreen extends StatefulWidget{
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'Welcome to quiz app!',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CategoriesScreen(categories)));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.yellowAccent,
                            borderRadius: BorderRadius.circular(20)
                        ),

                        height: 50,
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width - 48,
                        child: Text('Start', style: TextStyle(color: Colors.black, fontSize: 16),),
                      )
                  ),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}