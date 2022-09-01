import 'package:api_ornek0/ui/homescreen/controller/home_screen_controller.dart';
import 'package:api_ornek0/ui/homescreen/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app/services/services.dart';

void main() => runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => HomeController())],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
