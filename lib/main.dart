import 'package:flutter/material.dart';
import 'package:flutter_visimo/providers/user_provider.dart';
import 'package:flutter_visimo/visimo_app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
      ],
      child: const Visimo(),
    ),
  );
}
