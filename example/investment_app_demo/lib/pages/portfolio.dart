import 'package:flutter/material.dart';
import 'package:investment_app_demo/share/widgets/share_bottom_navigation_bar.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(
        title: const Text(
          "Investment",
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).canvasColor,
        foregroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      bottomNavigationBar: const ShareBottomNavigationBar(
        currentTab: TabItem.portfolio,
      ),
      body: SafeArea(
          child: Column(
        children: [],
      )),
    );
  }
}
