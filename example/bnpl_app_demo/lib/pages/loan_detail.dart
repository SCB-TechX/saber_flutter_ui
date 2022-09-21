import 'dart:developer';

import 'package:bnpl_app_demo/utils/custom_box_decoration.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

class LoanDetailPage extends StatefulWidget {
  const LoanDetailPage({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoanDetailPageState();
}

class _LoanDetailPageState extends State<LoanDetailPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
          title: const Text("Loan details"),
          foregroundColor: Theme.of(context).primaryColor,
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Accordion(
                  title: const Text(
                    'Saber Travel',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  subtitle: Text(
                    'Loan ID : B2CMMA220193980',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  textArrow: 'Loan details',
                  expandedContent: [
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [Text('Loan amount'), Text('4,000 THB')]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [Text('APR'), Text('25%')]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [Text('Cost per month'), Text('816 THB')]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [Text('Number of payments'), Text('6')]),
                    const SizedBox(
                      height: 16,
                    ),
                  ]),
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  alignment: Alignment.center,
                  child: LinearPercentIndicator(
                    //leaner progress bar
                    animation: true,
                    animationDuration: 10,
                    lineHeight: 5.0,
                    percent: 4 / 10,
                    barRadius: const Radius.circular(16),
                    progressColor: const Color(0xff222222),
                    backgroundColor: const Color(0xffF2F2F2),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 24, right: 24, top: 8, bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Paid to date',
                            style: Theme.of(context).textTheme.caption,
                          ),
                          Text(
                            'THB 2,897',
                            style: Theme.of(context).textTheme.caption,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Remaining',
                            style: Theme.of(context).textTheme.caption,
                          ),
                          Text(
                            'THB 2,583',
                            style: Theme.of(context).textTheme.caption,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xffF9FAFB),
                      border: Border(
                          bottom: BorderSide(color: Colors.grey, width: 0.5))),
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  padding: const EdgeInsets.only(top: 16.0),
                  child: TabBar(
                    indicatorColor: const Color(0xff222222),
                    indicatorWeight: 3.0,
                    labelColor: const Color(0xff222222),
                    labelStyle: BaseTextStyle.button,
                    labelPadding: const EdgeInsets.only(bottom: 8.0),
                    unselectedLabelColor: const Color(0xff888B8C),
                    unselectedLabelStyle: BaseTextStyle.bodyText2,
                    tabs: const [Text('Upcoming'), Text('Paid')],
                  ),
                ),
              ],
            ),
            Expanded(
                child: Container(
                    // color: Color(0xffF9FAFB),
                    child: TabBarView(children: <Widget>[
              //Upcoming
              ListView(padding: const EdgeInsets.only(top: 24), children: [
                Column(children: [
                  buildCardPayment(context, true, 4),
                  buildCardPayment(context, false, 5),
                  buildCardPayment(context, false, 6),
                ]),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: SecondaryButton(
                      onPressed: () {
                        log('Pay off 2,583 THB');
                      },
                      label: 'Pay off 2,583 THB'),
                ),
              ]),
              //Paid
              ListView(padding: const EdgeInsets.only(top: 24), children: [
                buildCardPayment(context, false, 3),
                buildCardPayment(context, false, 2),
                buildCardPayment(context, false, 1),
              ]),
            ])))
          ],
        ),
      ),
    );
  }

  static Widget buildCardPayment(context, bool isDueDate, int numberPayment) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 24, right: 24, bottom: 8),
          decoration: CustomBoxDecoration.build(),
          child: Theme(
            data: ThemeData(
              primarySwatch: Colors.grey,
            ).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              trailing: Padding(
                padding: EdgeInsets.only(top: isDueDate ? 24 : 0),
                child: const Icon(
                  Icons.expand_more,
                  size: 16,
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(top: isDueDate ? 24 : 8, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Payment $numberPayment',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Text(
                          'Due on 19 Aug 22',
                          style: Theme.of(context).textTheme.caption,
                        )
                      ],
                    ),
                    isDueDate
                        ? ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              )),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0xff222222)),
                            ),
                            onPressed: () {},
                            child: const Text('44 THB'))
                        : const Text('44 THB'),
                  ],
                ),
              ),
              children: <Widget>[
                Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.grey, width: 0.5))),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [Text('Principal'), Text('34 THB')],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [Text('Interest'), Text('34 THB')],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [Text('Fee'), Text('34 THB')],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [Text('Total'), Text('34 THB')],
                            ),
                            const SizedBox(
                              height: 16.0,
                            )
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
        isDueDate ? ribbon("Next payment", false) : Container()
      ],
    );
  }

  static Widget ribbon(String text, bool isSuccess) {
    return Positioned(
      top: isSuccess ? 30.0 : 5.0,
      left: 18,
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          decoration: BoxDecoration(
            color: isSuccess ? const Color(0xffB6F2A1) : const Color(0xffFFE9BE),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
          child: Text(
            text,
            style: const TextStyle(
                color: Color(0xffE19E1C),
                fontSize: 12,
                fontWeight: FontWeight.bold),
          )),
    );
  }
}
