import 'package:flutter/material.dart';

class InputGroup extends StatelessWidget {
  const InputGroup(
      {Key? key,
      required this.label,
      required this.formField,
      this.isPassword = false})
      : super(key: key);

  final String label;
  final TextFormField formField;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.25),
            spreadRadius: 5,
            blurRadius: 5,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            label,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: formField,
          ),
        ],
      ),
    );
  }
}
