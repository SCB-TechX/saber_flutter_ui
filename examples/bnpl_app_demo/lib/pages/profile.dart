import 'dart:developer';

import 'package:bnpl_app_demo/pages/apply_loan_detail.dart';
import 'package:bnpl_app_demo/pages/dashboard.dart';
import 'package:bnpl_app_demo/pages/loans.dart';
import 'package:bnpl_app_demo/utils/custom_box_decoration.dart';
import 'package:bnpl_app_demo/utils/custom_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                    child: Text('Your Profile',
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
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: [
                              Image.asset('assets/images/user.png', height: 50),
                              const SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Santa',
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ),
                                  const Text(
                                    '#0234234',
                                  ),
                                ],
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {
                                log('Edit Profile');
                              },
                              icon: const Icon(
                                CustomIcons.edit,
                                size: 16,
                              ))
                        ]),
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
              'Personal Info',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(horizontal: 24),
            decoration: CustomBoxDecoration.build(),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: const [
                      Icon(
                        CustomIcons.profile,
                        size: 16,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Your Profile',
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                  ),
                ]),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'More Settings',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(horizontal: 24),
            decoration: CustomBoxDecoration.build(),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: const [
                      Icon(
                        Icons.settings,
                        size: 16,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Account Security',
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                  ),
                ]),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(horizontal: 24),
            decoration: CustomBoxDecoration.build(),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: const [
                      Icon(
                        Icons.help_outline,
                        size: 16,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Help & Support',
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                  ),
                ]),
          ),
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
                      CustomIcons.wallet,
                      size: 18,
                      color: Theme.of(context).disabledColor,
                    ),
                    const SizedBox(
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
                log('Profile Page');
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Column(
                  children: [
                    Icon(
                      CustomIcons.profile,
                      size: 18,
                      color: Theme.of(context).primaryColor,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text('Profile',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12))
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
