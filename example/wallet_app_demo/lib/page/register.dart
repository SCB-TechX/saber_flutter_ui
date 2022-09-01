import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';
import 'package:wallet_app_demo/page/dashboard.dart';
import 'package:wallet_app_demo/page/signIn.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();
  TextEditingController _confirmPasswordField = TextEditingController();
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
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(top: 115),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Let’s create your account',
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(height: 24),
                Container(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  decoration: BoxDecoration(
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.05),
                        offset: Offset(0, 0),
                        blurRadius: 20,
                        spreadRadius: 5,
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextFormField(
                    controller: _emailField,
                    decoration: const InputDecoration(
                      labelText: "E-mail",
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    decoration: BoxDecoration(
                      boxShadow: const <BoxShadow>[
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.05),
                          offset: Offset(0, 0),
                          blurRadius: 20,
                          spreadRadius: 5,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: _passwordField,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      obscureText:
                          !_passwordVisible, //This will obscure text dynamically
                      decoration: InputDecoration(
                        labelText: 'Password',
                        suffix: GestureDetector(
                          child: Icon(
                            // Based on passwordVisible state choose the icon
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Theme.of(context).primaryColorDark,
                          ),
                          onTap: () {
                            // Update the state i.e. toogle the state of passwordVisible variable
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                      ),
                    )),
                const SizedBox(height: 16),
                Container(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    decoration: BoxDecoration(
                      boxShadow: const <BoxShadow>[
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.05),
                          offset: Offset(0, 0),
                          blurRadius: 20,
                          spreadRadius: 5,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextFormField(
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
                        labelText: 'Confirm password',
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
                    )),
                const SizedBox(height: 56),
                SizedBox(
                  width: double.infinity,
                  child: PrimaryButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        log(_emailField.text);
                        log(_passwordField.text);
                        log(_confirmPasswordField.text);

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DashboardPage()));
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
                                      builder: (context) => const SignInPage()))
                            },
                            child: const Text('Sign in',
                                style: TextStyle(
                                    color: const Color(0xff222222),
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
    );
  }
}
