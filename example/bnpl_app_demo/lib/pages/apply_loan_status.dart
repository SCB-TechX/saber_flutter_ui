import 'dart:developer';

import 'package:bnpl_app_demo/pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

class ApplyLoanDetailStatusPage extends StatefulWidget {
  const ApplyLoanDetailStatusPage({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ApplyLoanDetailStatusPageState();
}

class _ApplyLoanDetailStatusPageState extends State<ApplyLoanDetailStatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 23),
                child: GestureDetector(
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Theme.of(context).primaryColor,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ))
          ],
        ),
        title: Text("Reviewing"),
        foregroundColor: Theme.of(context).primaryColor,
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/successIcon.png'),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Just a few minutes',
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(
              height: 8,
            ),
            Text('We’re reviewing your PayLater application',
                style: Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.center),
            const SizedBox(
              height: 24,
            ),
            Text(
                'This should take no more than 2 minutes. We’ll send you an SMS once your PayLater is approved.',
                textAlign: TextAlign.center),
            const SizedBox(
              height: 64,
            ),
            SizedBox(
                width: double.infinity,
                child: PrimaryButton(
                    onPressed: () {
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
                    label: 'Okay')),
          ],
        ),
      ),
    );
  }
}
