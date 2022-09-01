import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';
import 'package:wallet_app_demo/page/dashboard.dart';
import 'package:wallet_app_demo/page/profile.dart';
import 'package:wallet_app_demo/utils/custom_icons.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // This function is triggered when the clear buttion is pressed
  void _clearTextField() {
    // Clear everything in the text field
    _controller.clear();
    // Call setState to update the UI
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Transactions"),
          foregroundColor: Theme.of(context).primaryColor,
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          centerTitle: false,
          automaticallyImplyLeading: false,
          bottom: const TabBar(
              tabs: [
                Tab(text: 'All'),
                Tab(text: 'Income'),
                Tab(text: 'Expenses'),
              ],
              indicatorColor: Color(0xff222222),
              indicatorWeight: 3.0,
              labelColor: Color(0xff222222),
              unselectedLabelColor: Color(0xff222222)),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: _controller,
                    onChanged: (value) {
                      // Call setState to update the UI
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(28))),
                      hintText: 'Enter a search term',
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: _controller.text.isEmpty
                          ? null
                          : IconButton(
                              icon: const Icon(Icons.cancel),
                              onPressed: _clearTextField,
                            ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  buildTransaction(context),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: buildTransaction(context),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: buildTransaction(context),
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
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text('History',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 12))
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
                        color: Theme.of(context).disabledColor,
                      ),
                      SizedBox(
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
      ),
    );
  }

  static Widget buildTransaction(context) {
    return Expanded(
      child: ListView(
        children: [
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
              Text('- 500.00 THB')
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
              Text('- 890.00 THB')
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
              Text('- 250.00 THB')
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
              Text('- 89.00 THB')
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
                      'Jul 28, 4:00 AM',
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
              ),
              const Spacer(),
              Text('- 89.00 THB')
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
                      'Jul 20, 2:08 PM',
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
              ),
              const Spacer(),
              Text('- 250.00 THB')
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
                      'Jul 20, 8:35 AM',
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
              ),
              const Spacer(),
              Text('- 990.00 THB')
            ],
          ),
        ],
      ),
    );
  }
}
