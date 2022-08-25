import 'package:flutter/material.dart';

//rutas
import 'package:este_si_debe_funcionar/assets/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: 'welcome',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color.fromRGBO(255, 140, 0, 1.0)),
        primaryColor: const Color.fromRGBO(0, 122, 255, 1.0),
        buttonColor: Color.fromRGBO(0, 122, 255, 1.0),
        disabledColor: const Color.fromRGBO(142, 142, 147, 1.2),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black
          )
        )

      ),
    );
  }
}