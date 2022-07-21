import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_wallet_ui/travel_wallet_ui.dart';
import 'package:travel_walllet/pages/buttons.dart';
import 'package:travel_walllet/pages/inputs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: TravelWalletTheme.themeData,
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
        title: Text(widget.title),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // // Headers
            // HeaderWidgets(),

            // // const Divider(),

            // // Body
            // BodyWidgets(),

            // // Buttons
            const ButtonWidgets(),
            // // const Divider(),

            const InputWidgets(),

            // AppbarWidgets(),
          ],
        ),
      )),
    );
  }
}

class AppbarWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          // backgroundColor: TravelWalletColors.black,
          // centerTitle: true,
          title: Text("HELLO"),
        )
      ],
    );
  }
}
