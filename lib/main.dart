import 'package:flutter/material.dart';

import './screens/category_meals_screen.dart';
import './screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final paletteDarkGreen = Color.fromRGBO(3, 55, 0, 1);
  final paletteBlue = Color.fromRGBO(0, 109, 137, 1);
  final paletteWhite = Color.fromRGBO(245, 241, 225, 1);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeal',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        accentColor: paletteBlue,
        canvasColor: paletteWhite,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: paletteDarkGreen,
              ),
              bodyText2: TextStyle(
                color: paletteDarkGreen,
              ),
              headline6: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(
                  fontFamily: 'Aquino',
                  fontSize: 30,
                ),
              ),
        ),
      ),
      //home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
