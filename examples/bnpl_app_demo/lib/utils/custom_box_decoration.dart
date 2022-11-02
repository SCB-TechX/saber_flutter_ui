import 'package:flutter/material.dart';

class CustomBoxDecoration {
  static Decoration build() {
    return const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      color: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            offset: Offset(4, 5),
            blurRadius: 20,
            spreadRadius: 2)
      ],
    );
  }
}
