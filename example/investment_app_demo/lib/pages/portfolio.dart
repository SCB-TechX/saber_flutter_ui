import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:investment_app_demo/share/widgets/share_bottom_navigation_bar.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(
        title: const Text(
          "Portfolio",
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).canvasColor,
        foregroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      bottomNavigationBar: const ShareBottomNavigationBar(
        currentTab: TabItem.portfolio,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(24),
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
                          Text(
                            '\$ 0',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text('0% This month',
                              style: TextStyle(color: Color(0xFF005FCB)))
                        ]),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildActionButton(
                    icon: Icons.add, label: "Add Funds", onPressed: () {}),
                _buildActionButton(
                    icon: Icons.tune, label: "Manage", onPressed: () {}),
                _buildActionButton(
                    icon: Icons.show_chart, label: "Invset", onPressed: () {})
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              padding: const EdgeInsets.all(24),
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
                children: [
                  Text(
                    'Net annualised return',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const Spacer(),
                  Text('0 %', style: Theme.of(context).textTheme.bodyText1)
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                    child: PrimaryButton(
                  label: 'View analytics',
                  onPressed: () {},
                ))
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            _buildSuggestedForYou()
          ]),
        ),
      )),
    );
  }

  Widget _buildSuggestedForYou() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Suggested for you', style: Theme.of(context).textTheme.subtitle2),
        const SizedBox(
          height: 24,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: 288,
                height: 180,
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
                child: Image.asset('assets/images/gift_for_you.png'),
              ),
              const SizedBox(
                width: 16,
              ),
              Container(
                width: 288,
                height: 180,
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
                child: Image.asset('assets/images/shop_now_pay_later.png'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column _buildActionButton(
      {required IconData icon,
      required String label,
      VoidCallback? onPressed}) {
    final buttonStyle = ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
    );
    final labelStyle = Theme.of(context)
        .textTheme
        .bodyText2
        ?.copyWith(fontWeight: FontWeight.bold);

    return Column(
      children: [
        ElevatedButton(
          onPressed: onPressed,
          style: buttonStyle,
          child: Icon(icon, size: 24),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          label,
          style: labelStyle,
        )
      ],
    );
  }
}
