import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:flutter_visimo/boxes.dart';
import 'package:flutter_visimo/visimo_app.dart';
import 'package:flutter_visimo/storage/preferences.dart';
import 'package:flutter_visimo/providers/user_provider.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(PreferencesAdapter());

  preferencesBox = await Hive.openBox<Preferences>('preferencesBox');
  // preferencesBox.clear();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
        ChangeNotifierProvider(create: (context) => HiveProvider()),
      ],
      child: const Visimo(),
    ),
  );
}
