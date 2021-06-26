import 'package:flutter/material.dart';

import 'package:calculater/UI/ui.dart';
import 'package:calculater/app/app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    Calculater(),
  );
}

class Calculater extends StatelessWidget {
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
