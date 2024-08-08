import 'package:flutter/material.dart';
import 'package:ui_app/ui_week6/page1.dart';
import 'package:ui_app/ui_week6/page2.dart';
import 'package:ui_app/ui_week6/page3.dart';
import 'package:ui_app/ui_week6/page4.dart';
import 'package:ui_app/ui_week6/page5.dart';
import 'package:ui_app/ui_week6/page6.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // initialRoute: "page6",
    routes: {
      "page1": (context) => const Page1(),
      "page2": (context) => const Page2(),
      "page3": (context) => const Page3(),
      "mainpage": (context) => const MyApp(),
      "page4": (context) => const Page4(),
      'page5': (context) => const Page5(),
      "page6": (context) => const Page6(),
    },
    theme: ThemeData(useMaterial3: false),
    home: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Listmodel> listtile = [
      Listmodel(
          onTap: () => Navigator.pushNamed(context, "page1"),
          text: "Additional Information"),
      Listmodel(
          onTap: () => Navigator.pushNamed(context, "page2"),
          text: "Manage Store"),
      Listmodel(
          onTap: () => Navigator.pushNamed(context, "page3"), text: "Payments"),
      Listmodel(
          onTap: () => Navigator.pushNamed(context, "page4"),
          text: "Dukaan Premium"),
      Listmodel(
          onTap: () => Navigator.pushNamed(context, 'page5'), text: "Orders"),
      Listmodel(
          onTap: () => Navigator.pushNamed(context, 'page6'),
          text: "Catalogue"),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Page"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: listtile.length,
        itemBuilder: (BuildContext context, int index) {
          final data = listtile[index];
          return ListTile(
            title: Text(data.text.toString()),
            onTap: data.onTap,
          );
        },
      ),
    );
  }
}

class Listmodel {
  final Function()? onTap;
  final String? text;
  Listmodel({required this.onTap, required this.text});
}
