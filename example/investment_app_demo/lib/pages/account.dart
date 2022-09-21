import 'package:flutter/material.dart';
import 'package:investment_app_demo/pages/signin.dart';
import 'package:investment_app_demo/share/widgets/share_bottom_navigation_bar.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  bool faceIdEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(
        title: const Text(
          "Profile",
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).canvasColor,
        foregroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      bottomNavigationBar: const ShareBottomNavigationBar(
        currentTab: TabItem.account,
      ),
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/avatar.png',
                        height: 80,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Santa",
                        style: Theme.of(context).textTheme.headline5,
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              _buildSection("Personal Info"),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/profile.png',
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text('Your Profile'),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              _buildDivider(),
              const SizedBox(
                height: 24,
              ),
              _buildSection("Security"),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/scan.png',
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text('Face Id'),
                  const Spacer(),
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Checkbox(
                      value: faceIdEnabled,
                      onChanged: (value) => setState(() {
                        faceIdEnabled = !faceIdEnabled;
                      }),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              _buildDivider(),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/lock.png',
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text('Change Password'),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              _buildDivider(),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/unlock.png',
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text('Forgot Password'),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              _buildDivider(),
              const SizedBox(
                height: 24,
              ),
              _buildSection("General"),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/internet.png',
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text('Languages'),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              _buildDivider(),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/info_circle.png',
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text('Help and Support'),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              _buildDivider(),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              const SignInPage(),
                          transitionDuration: Duration.zero,
                          reverseTransitionDuration: Duration.zero,
                        ),
                      );
                    },
                    child: Text(
                      'Logout',
                      style: Theme.of(context)
                          .textTheme
                          .button
                          ?.copyWith(color: SystemColors.error),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }

  Divider _buildDivider() {
    return const Divider(
      color: Color(0xFFDEDEDE),
      height: 1,
      thickness: 1,
    );
  }

  Text _buildSection(String title) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .bodyText2
          ?.copyWith(color: const Color(0xFF989797)),
      textAlign: TextAlign.start,
    );
  }
}
