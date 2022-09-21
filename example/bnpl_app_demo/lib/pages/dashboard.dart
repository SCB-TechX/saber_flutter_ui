import 'dart:developer';

import 'package:bnpl_app_demo/pages/apply_loan_detail.dart';
import 'package:bnpl_app_demo/pages/loans.dart';
import 'package:bnpl_app_demo/pages/profile.dart';
import 'package:bnpl_app_demo/utils/custom_box_decoration.dart';
import 'package:bnpl_app_demo/utils/custom_icons.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SvgPicture.asset(
                'assets/images/bg.svg',
                color: Theme.of(context).primaryColor,
              ),
              SvgPicture.asset(
                'assets/images/bg-c.svg',
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 56, left: 24, right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Welcome Back',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Theme.of(context).canvasColor)),
                            Text('Santa',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Theme.of(context).canvasColor)),
                          ],
                        ),
                        Image.asset('assets/images/user.png', height: 40),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    decoration: CustomBoxDecoration.build(),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text('Your balances'),
                          Text(
                            '0.00  THB',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const SizedBox(
                            height: 32,
                            child: Divider(),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildAction(context, 'Add Money', Icons.add),
                              _buildAction(
                                context,
                                'Withdraw',
                                CustomIcons.withdraw,
                              ),
                              _buildAction(
                                  context, 'Transfer', CustomIcons.transfer),
                              _buildAction(
                                context,
                                'Pay',
                                CustomIcons.scan_payment,
                              ),
                            ],
                          )
                        ]),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Your Saving',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Hyperlink(label: 'View More', onTap: () {})
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      width: MediaQuery.of(context).size.width,
                      decoration: CustomBoxDecoration.build(),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/images/playstation.svg',
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Buy Playstation',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text('Slim 1 TB 56 Games'),
                                  ],
                                ),
                              ],
                            ),
                            // Use package percent_indicator
                            CircularPercentIndicator(
                              radius: 25.0,
                              lineWidth: 4.0,
                              percent: 0.80,
                              center: const Text("80%"),
                              progressColor: Theme.of(context).primaryColor,
                            ),
                          ]),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Services',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Hyperlink(label: 'View More', onTap: () {})
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ApplyLoanDetailPage()));
                        },
                        child: Image.asset('assets/images/services.png')),
                    const SizedBox(
                      height: 16,
                    ),
                    Image.asset('assets/images/services2.png'),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
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
                log('Dashboard Page');
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Column(
                  children: [
                    Icon(
                      CustomIcons.wallet,
                      size: 18,
                      color: Theme.of(context).primaryColor,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text('Wallet',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12))
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
                        const LoansPage(),
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
                      CustomIcons.loans,
                      size: 18,
                      color: Theme.of(context).disabledColor,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Loans',
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
                        const ApplyLoanDetailPage(),
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
                      Icons.grid_view,
                      size: 18,
                      color: Theme.of(context).disabledColor,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Service',
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
                        const ProfilePage(),
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
                      CustomIcons.profile,
                      size: 18,
                      color: Theme.of(context).disabledColor,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Profile',
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildAction(context, String label, IconData icon) {
    return Column(
      children: [
        Container(
          decoration: ShapeDecoration(
              color: Theme.of(context).primaryColor, shape: const CircleBorder()),
          child: IconButton(
            icon: Icon(
              icon,
              color: Theme.of(context).canvasColor,
              size: 18,
            ),
            onPressed: () {
              log(label);
            },
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
