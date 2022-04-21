import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skill_showoff/core/providers/main_provider/main_provider.dart';
import 'package:skill_showoff/ui/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MainProvider>(create: (context)=> MainProvider()),
      ],
      child: const MaterialApp(
        title: "Skill Showoff",
        debugShowCheckedModeBanner: false,
        home:Home(),
      ),
    );
  }
}
