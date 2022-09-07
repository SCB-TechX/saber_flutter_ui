import 'dart:developer';

import 'package:bnpl_app_demo/pages/dashboard.dart';
import 'package:bnpl_app_demo/pages/profile.dart';
import 'package:bnpl_app_demo/pages/loan_detail.dart';
import 'package:bnpl_app_demo/utils/custom_box_decoration.dart';
import 'package:bnpl_app_demo/utils/custom_icons.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoansPage extends StatefulWidget {
  const LoansPage({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoansPageState();
}

class _LoansPageState extends State<LoansPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 56, left: 24, right: 24),
                    child: Text('Your loans',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Theme.of(context).canvasColor)),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    decoration: CustomBoxDecoration.build(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Remaining credit',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '5,100.00 THB',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        const SizedBox(
                          height: 32,
                          child: Divider(),
                        ),
                        Text(
                          'Your total borrowing',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).disabledColor),
                        ),
                        Text(
                          '4,900.00 THB',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).disabledColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Upcoming payments',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoanDetailPage()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        width: MediaQuery.of(context).size.width,
                        decoration: CustomBoxDecoration.build(),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: [
                                  Image.asset('assets/images/saber_logo.png',
                                      height: 32),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Saber Travel',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                      Text('4/6  Repayment'),
                                    ],
                                  ),
                                ],
                              ),
                              Text('816 THB')
                            ]),
                      ),
                    ),
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
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        DashboardPage(),
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
                      CustomIcons.wallet,
                      size: 18,
                      color: Theme.of(context).disabledColor,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Wallet',
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                log('Loans Page');
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Column(
                  children: [
                    Icon(
                      CustomIcons.loans,
                      size: 18,
                      color: Theme.of(context).primaryColor,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text('Loans',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12))
                  ],
                ),
              ),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                log('Services Page');
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
                    SizedBox(
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
                        ProfilePage(),
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
                    SizedBox(
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
}
