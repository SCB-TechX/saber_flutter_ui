import 'package:flutter/material.dart';
import 'package:investment_app_demo/pages/account.dart';
import 'package:investment_app_demo/pages/dashboard.dart';
import 'package:investment_app_demo/pages/investment.dart';
import 'package:investment_app_demo/pages/portfolio.dart';
import 'package:investment_app_demo/utils/custom_icons.dart';

enum TabItem { home, investment, portfolio, account }

class ShareBottomNavigationBar extends StatefulWidget {
  const ShareBottomNavigationBar({
    super.key,
    required this.currentTab,
  });

  final TabItem currentTab;

  @override
  State<ShareBottomNavigationBar> createState() =>
      _ShareBottomNavigationBarState();
}

class _ShareBottomNavigationBarState extends State<ShareBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
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
          buildItem(
              icon: CustomIcons.home,
              label: "Home",
              onTap: () {
                navigatePushReplacement(const DashboardPage());
              },
              active: widget.currentTab == TabItem.home),
          buildItem(
              icon: CustomIcons.investment,
              label: "Investment",
              onTap: () {
                navigatePushReplacement(const InvestmentPage());
              },
              active: widget.currentTab == TabItem.investment),
          buildItem(
              icon: CustomIcons.portfolio,
              label: "Portfolio",
              onTap: () {
                navigatePushReplacement(const PortfolioPage());
              },
              active: widget.currentTab == TabItem.portfolio),
          buildItem(
              icon: CustomIcons.account,
              label: "Account",
              onTap: () {
                navigatePushReplacement(const AccountPage());
              },
              active: widget.currentTab == TabItem.account),
        ],
      ),
    );
  }

  void navigatePushReplacement(Widget widget) {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => widget,
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      ),
    );
  }

  GestureDetector buildItem(
      {required IconData icon,
      required String label,
      required VoidCallback onTap,
      bool active = false}) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Column(
          children: [
            Icon(
              icon,
              size: 18,
              color: active
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).disabledColor,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              label,
              style: active
                  ? const TextStyle(fontWeight: FontWeight.w600, fontSize: 12)
                  : Theme.of(context).textTheme.caption,
            )
          ],
        ),
      ),
    );
  }
}
