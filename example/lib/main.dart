import 'package:flutter/material.dart';
import 'package:travel_wallet_ui/travel_wallet_ui.dart';
import 'package:travel_walllet/pages/buttons.dart';
import 'package:travel_walllet/pages/inputs.dart';
import 'package:travel_walllet/pages/appbars.dart';
import 'package:travel_walllet/pages/cards.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeColor.blacktheme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        shadowColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Appbars(),
              Cards()
              // Switch.adaptive(value: true, onChanged: (_) {})
            ],
          ),
        ),
      ),
    );
  }
}
