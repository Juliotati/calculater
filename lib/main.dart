import 'package:calculater/UI/ui.dart';
import 'package:calculater/app/app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const Calculater(),
  );
}

class Calculater extends StatelessWidget {
  const Calculater();
  @override
  Widget build(BuildContext context) {
    return ListenableProvider<CalculaterHelper>(
      create: (_) => CalculaterHelper(),
      child: MaterialApp(
        title: 'Calculater',
        theme: calculaterTheme,
        home: const CalculaterPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
