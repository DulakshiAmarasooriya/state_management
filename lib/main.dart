import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home.dart';
import 'list_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumberListProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: Color(0xFF02539a)),
        ),
        home: Home(),
      ),
    );
  }
}
