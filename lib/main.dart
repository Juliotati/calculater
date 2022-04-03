import 'dart:io';

import 'package:calculater/UI/ui.dart';
import 'package:calculater/app/app.dart';
import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await DesktopWindow.setMinWindowSize(const Size(372.0, 700.0));
    await DesktopWindow.setMaxWindowSize(const Size(372.0, 700.0));
  }
  runApp(const Calculater());
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
