import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:investment_app_demo/pages/investment.dart';
import 'package:investment_app_demo/share/widgets/share_bottom_navigation_bar.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/saber_labs_logo_black_without_name.png',
                        height: 24,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/bell.png',
                            height: 24,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Image.asset(
                            'assets/images/avatar.png',
                            height: 24,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        clipBehavior: Clip.hardEdge,
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
                        child: Stack(
                          children: [
                            SvgPicture.asset(
                              'assets/images/get_your_money_working_for_you.svg',
                              width: MediaQuery.of(context).size.width,
                              alignment: Alignment.bottomCenter,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.close,
                                      color: Colors.black,
                                    )),
                              ],
                            )
                          ],
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const AdvertisementCard(),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Text(
                    'Recommended',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  children: [
                    InvestmentCard(
                      title: "Propertyless Estate",
                      returnsPercentage: 20,
                      returnsIn: "Returns in 9 months",
                    ),
                    InvestmentCard(
                      title: "Cashew Nuts",
                      returnsPercentage: 30,
                      returnsIn: "Returns in 9 months",
                    ),
                    InvestmentCard(
                      title: "Convallis",
                      returnsPercentage: 20,
                      returnsIn: "Returns in 9 months",
                    ),
                    InvestmentCard(
                      title: "Propertyless Estate",
                      returnsPercentage: 20,
                      returnsIn: "Returns in 9 months",
                    ),
                    InvestmentCard(
                      title: "Propertyless Estate",
                      returnsPercentage: 20,
                      returnsIn: "Returns in 9 months",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const ShareBottomNavigationBar(
        currentTab: TabItem.home,
      ),
    );
  }
}

class AdvertisementCard extends StatelessWidget {
  const AdvertisementCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: Color(0xFF222222),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.05),
              offset: Offset(4, 5),
              blurRadius: 20,
              spreadRadius: 2)
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(children: [
        Row(
          children: [
            Image.asset('assets/images/salary.png', height: 17),
            const SizedBox(
              width: 4,
            ),
            Text(
              "Ways to earn more money",
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [
            Text(
                "Invite your friends and get a bonus\nGet your referral code >",
                style: Theme.of(context).textTheme.caption?.copyWith(
                      color: Colors.white,
                    )),
          ],
        ),
      ]),
    );
  }
}

class InvestmentCard extends StatelessWidget {
  String title;
  double returnsPercentage;
  String returnsIn;

  InvestmentCard({
    Key? key,
    required this.title,
    required this.returnsPercentage,
    required this.returnsIn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.all(Radius.circular(16)),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.05),
              offset: Offset(4, 5),
              blurRadius: 20,
              spreadRadius: 2)
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .caption
                ?.copyWith(color: const Color(0xFF001533))),
        const SizedBox(
          height: 16,
        ),
        Text('$returnsPercentage%',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: const Color(0xFF222222), fontWeight: FontWeight.bold)),
        Text(returnsIn,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: const Color(0xFF222222), fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 24,
        ),
        Expanded(
          child: PrimaryButton(
            onPressed: () {
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
            label: 'Instant Invest',
            size: ButtonSize.extraSmall,
          ),
        ),
      ]),
    );
  }
}
