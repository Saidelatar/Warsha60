import 'package:flutter/material.dart';
import 'package:warsha60/features/Auth/presentation/views/login.dart';

void main() {
  runApp(const Warsha60());
}

class Warsha60 extends StatelessWidget {
  const Warsha60({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
