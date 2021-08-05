import 'package:flutter/material.dart';
import 'package:practice_yt/nav/HomePage.dart';
import 'package:practice_yt/nav/screens/catagories_screen.dart';
import 'package:practice_yt/nav/screens/categories_meals_screen.dart';
import 'package:practice_yt/nav/screens/meal_detail_screen.dart';
import 'package:practice_yt/practice/Custom1.dart';
import 'package:practice_yt/practice/Custom2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              title: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ))),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      //home: CustomScroll1(),
      //home: CustomScroll2(),
      //home: MyHomePage(),
      //home: CatagoriesScreen(),
      routes: {
        '/': (ctx) => CatagoriesScreen(),
        '/category-meals': (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
    );
  }
}
