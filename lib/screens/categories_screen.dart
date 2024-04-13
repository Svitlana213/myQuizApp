import 'package:flutter/material.dart';
import 'questions_screen.dart';
import '../models/Category.dart';

class CategoriesScreen extends StatelessWidget {
  final List<Category> categories;

  CategoriesScreen(this.categories);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizz Categories'),
        backgroundColor: Colors.yellowAccent,
        toolbarHeight: 100,
      ),
      body: SizedBox.expand(
        child: Container(

          decoration: BoxDecoration(
            color: Colors.black, // Set your desired background color here
          ),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

              crossAxisCount: 3,
            ),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuestionScreen(categories[index]),
                    ),
                  );
                },
                child: Card(
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(20.0)
                  // ),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        categories[index].imageUrl,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        color: Colors.black.withOpacity(0.3), // Adjust the opacity as needed
                        child: Center(
                          child: Text(
                            categories[index].name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}