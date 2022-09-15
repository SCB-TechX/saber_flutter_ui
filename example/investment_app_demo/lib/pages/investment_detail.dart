import 'package:flutter/material.dart';
import 'package:investment_app_demo/share/widgets/share_bottom_navigation_bar.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

class InvestmentDetailPage extends StatefulWidget {
  const InvestmentDetailPage({super.key});

  @override
  State<InvestmentDetailPage> createState() => _InvestmentDetailPageState();
}

class _InvestmentDetailPageState extends State<InvestmentDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(
        title: const Text(
          "Investment",
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).canvasColor,
        foregroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      bottomNavigationBar:
          const ShareBottomNavigationBar(currentTab: TabItem.investment),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Column(children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Lithuania Investment',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    ?.copyWith(color: const Color(0xFF001533)),
                              ),
                              Text(
                                'by Lithuania',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    ?.copyWith(color: const Color(0xFF777777)),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Chip(
                                  backgroundColor: const Color(0xFFB2D6FF),
                                  label: Text("Buy back guarantee",
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption
                                          ?.copyWith(
                                            color: const Color(0xFF005FCB),
                                          ))),
                            ]),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('20%',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5
                                      ?.copyWith(
                                          color: const Color(0xFF222222),
                                          fontWeight: FontWeight.bold)),
                              Text('Returns in 9 months',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                        color: const Color(0xFF222222),
                                      )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: const EdgeInsets.all(16),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const PieChart(
                    dataMap: {
                      "\$ Available": 12000,
                      "\$ Not Available": 18000,
                    },
                    colorList: [
                      Color(0xFF005FCB),
                      Color(0xFF000000),
                    ],
                    chartType: ChartType.disc,
                    legendOptions: LegendOptions(
                      legendPosition: LegendPosition.right,
                      showLegends: true,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Enter amount for investment',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      hintText: '0',
                      prefixIcon: IconButton(
                        constraints: const BoxConstraints(maxHeight: 36),
                        onPressed: () {},
                        icon: const Icon(Icons.attach_money),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: PrimaryButton(
                          label: 'Invest Now',
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: Text(
                      'Learn more aboout the investment >',
                      style: Theme.of(context).textTheme.caption?.copyWith(
                          color: const Color(0xFF222222),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
