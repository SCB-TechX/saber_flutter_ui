import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:investment_app_demo/pages/dashboard.dart';
import 'package:investment_app_demo/utils/custom_icons.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

class InvestmentPage extends StatefulWidget {
  const InvestmentPage({super.key});

  @override
  State<InvestmentPage> createState() => _InvestmentPageState();
}

class _InvestmentPageState extends State<InvestmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(
        title: const Text(
          "Investment",
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).canvasColor,
        foregroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Column(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Not sure what you want to invest in?',
                ),
                Text(
                  'See recommendations.',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                fillColor: SystemColors.disableLight,
                filled: true,
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                    borderSide: BorderSide.none),
                hintText: 'Search for investment',
                prefixIcon: Icon(
                  Icons.search,
                  color: SystemColors.disableDark,
                ),
              ),
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.black,
                        backgroundColor: Theme.of(context).canvasColor,
                        foregroundColor: Theme.of(context).primaryColor,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16)))),
                    child: const Text('Real Estate'),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shadowColor: Colors.black,
                          backgroundColor: Theme.of(context).canvasColor,
                          foregroundColor: Theme.of(context).primaryColor,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)))),
                      child: const Text('Agriculture')),
                  const SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shadowColor: Colors.black,
                          backgroundColor: Theme.of(context).canvasColor,
                          foregroundColor: Theme.of(context).primaryColor,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)))),
                      child: const Text('Gold')),
                  const SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shadowColor: Colors.black,
                          backgroundColor: Theme.of(context).canvasColor,
                          foregroundColor: Theme.of(context).primaryColor,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)))),
                      child: const Text('Transportation')),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => IntrinsicHeight(
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            color: Color(0xFFFFFFFF),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.05),
                                  offset: Offset(4, 5),
                                  blurRadius: 20,
                                  spreadRadius: 2)
                            ],
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Row(children: [
                            Expanded(
                              flex: 4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Propertyvest',
                                      style:
                                          Theme.of(context).textTheme.caption),
                                  Text(
                                    'Propertyvest Estate Investment',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        ?.copyWith(
                                            fontSize: 12,
                                            color: const Color(0xFF001533)),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        PrimaryButton(
                                          onPressed: () {},
                                          label: 'Instant Invest',
                                          size: ButtonSize.extraSmall,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const VerticalDivider(
                              thickness: 1,
                              endIndent: 0,
                              color: Color(0xFFEBEBEB),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('20%',
                                    style:
                                        Theme.of(context).textTheme.headline5),
                                Text('Returns in 9 months',
                                    textAlign: TextAlign.right,
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        ?.copyWith(fontSize: 8)),
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Chip(
                                        label: Text(
                                          'Still Selling',
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption
                                              ?.copyWith(
                                                  color:
                                                      const Color(0xFF005FCB)),
                                        ),
                                        backgroundColor:
                                            const Color(0xFFB2D6FF),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ]),
                        ),
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 8,
                      ),
                  itemCount: 6),
            )
          ]),
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
