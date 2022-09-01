import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';
import 'package:wallet_app_demo/page/dashboard.dart';
import 'package:wallet_app_demo/page/profile_detail.dart';
import 'package:wallet_app_demo/page/transactions.dart';
import 'package:wallet_app_demo/utils/custom_icons.dart';

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
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 56, left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/user.png', height: 40),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Santa',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Icon(
                      Icons.qr_code,
                      color: Colors.black,
                      size: 20,
                    ),
                    Text(
                      'My QR',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(horizontal: 24),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.shade200,
                    offset: const Offset(2, 4),
                    blurRadius: 5,
                    spreadRadius: 2)
              ],
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.person,
                            size: 16,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Text('Profile'),
                        ],
                      ),
                      GestureDetector(
                        onTap: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DetailProfilePage()));
                        }),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.confirmation_number,
                            size: 16,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Text('Coupons'),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.group_add,
                        size: 16,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      const Text('Invite friends'),
                    ],
                  ),
                ]),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(horizontal: 24),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.shade200,
                    offset: const Offset(2, 4),
                    blurRadius: 5,
                    spreadRadius: 2)
              ],
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.settings,
                            size: 16,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Text('Setting'),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                      ),
                    ],
                  ),
                ]),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(horizontal: 24),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.shade200,
                    offset: const Offset(2, 4),
                    blurRadius: 5,
                    spreadRadius: 2)
              ],
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.verified_user,
                            size: 16,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Text('Security'),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.help_outline,
                            size: 16,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Text('Help & Support'),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                      ),
                    ],
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
                      CustomIcons.home_outline,
                      size: 18,
                      color: Theme.of(context).disabledColor,
                    ),
                    SizedBox(
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
                        TransactionsPage(),
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
                      CustomIcons.transaction,
                      size: 18,
                      color: Theme.of(context).disabledColor,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'History',
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor),
              child: IconButton(
                tooltip: 'Favorite',
                icon: Icon(
                  CustomIcons.scan_payment,
                  color: Theme.of(context).canvasColor,
                ),
                onPressed: () {},
              ),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Column(
                  children: [
                    Icon(
                      CustomIcons.credit_card,
                      size: 18,
                      color: Theme.of(context).disabledColor,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Card',
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
                      color: Theme.of(context).primaryColor,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text('Account',
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
