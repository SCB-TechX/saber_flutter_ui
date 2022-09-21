import 'package:flutter/material.dart';
import 'package:investment_app_demo/pages/investment_detail.dart';
import 'package:investment_app_demo/share/widgets/share_bottom_navigation_bar.dart';
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
      bottomNavigationBar: const ShareBottomNavigationBar(
        currentTab: TabItem.investment,
      ),
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
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              PageRouteBuilder(
                                                pageBuilder: (context,
                                                        animation1,
                                                        animation2) =>
                                                    const InvestmentDetailPage(),
                                                transitionDuration:
                                                    Duration.zero,
                                                reverseTransitionDuration:
                                                    Duration.zero,
                                              ),
                                            );
                                          },
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
                                        ?.copyWith(fontSize: 9)),
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
}
