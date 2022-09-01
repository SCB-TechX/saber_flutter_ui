import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';
import 'package:wallet_app_demo/utils/custom_icons.dart';

class DetailProfilePage extends StatefulWidget {
  const DetailProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DetailProfilePageState();
}

class _DetailProfilePageState extends State<DetailProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text("Profile"),
        foregroundColor: Theme.of(context).primaryColor,
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(24),
            width: MediaQuery.of(context).size.width,
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.account_circle,
                            size: 16,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Text('Profile image'),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.feed,
                            size: 16,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Text('Personal information'),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.smartphone,
                            size: 16,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Phone'),
                              Text(
                                '*******333',
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.email,
                            size: 16,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('E-mail'),
                              Text(
                                'sa***@***.com',
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                      ),
                    ],
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
