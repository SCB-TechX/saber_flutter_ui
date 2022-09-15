import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:investment_app_demo/pages/dashboard.dart';
import 'package:investment_app_demo/pages/signin.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailField = TextEditingController();
  final TextEditingController _passwordField = TextEditingController();
  final TextEditingController _confirmPasswordField = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;

  @override
  void dispose() {
    _emailField.dispose();
    _passwordField.dispose();
    _confirmPasswordField.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF222222),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset('assets/images/saber_labs_logo_white.png'),
            ),
            Expanded(
              flex: 3,
              child: Form(
                key: _formKey,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Let’s create your account',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        controller: _emailField,
                        decoration: const InputDecoration(
                          hintText: "E-mail",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: _passwordField,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        obscureText: !_passwordVisible,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          suffix: GestureDetector(
                            child: Icon(
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Theme.of(context).primaryColorDark,
                            ),
                            onTap: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: _confirmPasswordField,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        obscureText: !_confirmPasswordVisible,
                        decoration: InputDecoration(
                          hintText: 'Confirm password',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          suffix: GestureDetector(
                            child: Icon(
                              _confirmPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Theme.of(context).primaryColorDark,
                            ),
                            onTap: () {
                              setState(() {
                                _confirmPasswordVisible =
                                    !_confirmPasswordVisible;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 56),
                      SizedBox(
                        width: double.infinity,
                        child: PrimaryButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          const DashboardPage(),
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                ),
                              );
                            }
                          },
                          label: 'Create account',
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.only(top: 13),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Already have an account? '),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () => {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignInPage()))
                                  },
                                  child: const Text('Sign in',
                                      style: TextStyle(
                                          color: Color(0xff222222),
                                          fontWeight: FontWeight.w800)),
                                ),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
