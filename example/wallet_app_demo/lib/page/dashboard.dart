
import 'package:flutter/material.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';
import 'package:wallet_app_demo/page/profile.dart';
import 'package:wallet_app_demo/page/transactions.dart';
import 'package:wallet_app_demo/utils/custom_icons.dart';

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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Hello, Santa',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Text(
                          '9 Jun, Thu',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(
                  CustomIcons.notifications,
                  color: Colors.black,
                  size: 20,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            height: 80,
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
                  const Text('Your balances'),
                  Text(
                    '10,000.00  THB',
                    style: Theme.of(context).textTheme.headline6,
                  )
                ]),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: _buildAction()),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
              margin: const EdgeInsets.only(top: 16),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)),
                color: Colors.white,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey.shade200,
                      offset: const Offset(0, 0),
                      blurRadius: 5,
                      spreadRadius: 2)
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Recent Transactions',
                          style: Theme.of(context).textTheme.subtitle1),
                      Hyperlink(
                          label: 'View more',
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation1, animation2) =>
                                        const TransactionsPage(),
                                transitionDuration: Duration.zero,
                                reverseTransitionDuration: Duration.zero,
                              ),
                            );
                          })
                    ],
                  ),
                  buildTransaction(context),
                ],
              ),
            ),
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
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Column(
                  children: [
                    Icon(
                      CustomIcons.home_outline,
                      size: 18,
                      color: Theme.of(context).primaryColor,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text('Home',
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
                        const TransactionsPage(),
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
                    const SizedBox(
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
                    const SizedBox(
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
                      'Account',
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

  static Widget _buildAction() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 105,
          child: ShapeIconButtonWithLabel(
            onPressed: () {},
            label: 'Add',
            icon: CustomIcons.deposit,
            shape: ButtonShape.rectangle,
            color: Colors.white,
            iconColor: Colors.black,
            textColor: Colors.black,
          ),
        ),
        SizedBox(
          width: 105,
          child: ShapeIconButtonWithLabel(
            onPressed: () {},
            label: 'Withdraw',
            icon: CustomIcons.withdraw,
            shape: ButtonShape.rectangle,
            color: Colors.white,
            iconColor: Colors.black,
            textColor: Colors.black,
          ),
        ),
        SizedBox(
          width: 105,
          child: ShapeIconButtonWithLabel(
            onPressed: () {},
            label: 'Transfer',
            icon: CustomIcons.transfer,
            shape: ButtonShape.rectangle,
            color: Colors.white,
            iconColor: Colors.black,
            textColor: Colors.black,
          ),
        ),
      ],
    );
  }

  static Widget buildTransaction(context) {
    return Expanded(
      child: ListView(
        children: [
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Image.asset('assets/images/shopping-icon.png'),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shopping',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      'Aug 5, 3:20 PM',
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
              ),
              const Spacer(),
              const Text('- 500.00 THB')
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Image.asset('assets/images/shopping-icon.png'),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shopping',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      'Aug 2, 4:20 PM',
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
              ),
              const Spacer(),
              const Text('- 890.00 THB')
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Image.asset('assets/images/food-icon.png'),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Food',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      'Aug 2, 2:04 PM',
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
              ),
              const Spacer(),
              const Text('- 250.00 THB')
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Image.asset('assets/images/food-icon.png'),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Food',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      'Jul 29, 5:00 PM',
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
              ),
              const Spacer(),
              const Text('- 89.00 THB')
            ],
          ),
        ],
      ),
    );
  }
}
