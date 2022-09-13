import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:investment_app_demo/pages/dashboard.dart';
import 'package:investment_app_demo/pages/investment.dart';
import 'package:investment_app_demo/share/widgets/share_bottom_navigation_bar.dart';
import 'package:investment_app_demo/utils/custom_icons.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

class InvestmentDetailPage extends StatefulWidget {
  const InvestmentDetailPage({super.key});

  @override
  State<InvestmentDetailPage> createState() => _InvestmentDetailPageState();
}

class _InvestmentDetailPageState extends State<InvestmentDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(
        title: const Text(
          "Investment",
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).canvasColor,
        foregroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      bottomNavigationBar:
          ShareBottomNavigationBar(currentTab: TabItem.investment),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Column(children: []),
        ),
      ),
    );
  }

  Container _buildBottomNavigationBar() {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 1, color: Color(0xFFEDEEF0)),
        ),
        color: Colors.white,
      ),
      height: 70,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) =>
                      const DashboardPage(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                children: [
                  Icon(
                    CustomIcons.home,
                    size: 18,
                    color: Theme.of(context).disabledColor,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Home',
                    style: Theme.of(context).textTheme.caption,
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) =>
                      const InvestmentPage(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                children: [
                  Icon(
                    CustomIcons.investment,
                    size: 18,
                    color: Theme.of(context).primaryColor,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    'Investment',
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 12),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              // Navigator.pushReplacement(
              //   context,
              //   PageRouteBuilder(
              //     pageBuilder: (context, animation1, animation2) =>
              //         ApplyLoanDetailPage(),
              //     transitionDuration: Duration.zero,
              //     reverseTransitionDuration: Duration.zero,
              //   ),
              // );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                children: [
                  Icon(
                    CustomIcons.portfolio,
                    size: 18,
                    color: Theme.of(context).disabledColor,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Portfolio',
                    style: Theme.of(context).textTheme.caption,
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              // Navigator.pushReplacement(
              //   context,
              //   PageRouteBuilder(
              //     pageBuilder: (context, animation1, animation2) =>
              //         ProfilePage(),
              //     transitionDuration: Duration.zero,
              //     reverseTransitionDuration: Duration.zero,
              //   ),
              // );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                children: [
                  Icon(
                    CustomIcons.account,
                    size: 18,
                    color: Theme.of(context).disabledColor,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Account',
                    style: Theme.of(context).textTheme.caption,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
