import 'dart:developer';

import 'package:bnpl_app_demo/pages/dashboard.dart';
import 'package:bnpl_app_demo/pages/signin.dart';
import 'package:flutter/material.dart';
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
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(top: 72),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  child: Text(
                    'Let’s create your account',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                const SizedBox(height: 32),
                Text(
                  'E-mail',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _emailField,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    hintText: 'E-mail',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                Text(
                  'Password',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                const SizedBox(height: 8),
                TextFormField(
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
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    hintText: 'Password',
                    suffix: GestureDetector(
                      child: Icon(
                        // Based on passwordVisible state choose the icon
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                        size: 20,
                      ),
                      onTap: () {
                        // Update the state i.e. toogle the state of passwordVisible variable
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Confirm password',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                const SizedBox(height: 8),
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
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    hintText: 'Confirm password',
                    suffix: GestureDetector(
                      child: Icon(
                        _confirmPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                        size: 20,
                      ),
                      onTap: () {
                        setState(() {
                          _confirmPasswordVisible = !_confirmPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 40),
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
                const SizedBox(height: 8),
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
    );
  }
}
