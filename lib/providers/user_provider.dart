import 'dart:io';
import 'package:flutter/material.dart';

// import 'package:flutter_visimo/boxes.dart';
import 'package:flutter_visimo/models/user.dart';
import 'package:flutter_visimo/storage/preferences.dart';

class HiveProvider extends ChangeNotifier {
  Preferences preferences = Preferences();

  void updateLanguage({String? value}) {
    // final box = preferencesBox.get('language');
    // print('box_value ${box?.language}');
    if (value == null) {
      String lang = Platform.localeName.split("_")[0];
      preferences.language = lang;
      return;
    }
    preferences.language = value;
    // if (box == null) {
    //   preferencesBox.put('language', Preferences(language: lang));

    //   return;
    // }

    // if (box.language == value || value == null) return;

    // preferencesBox.put('language', Preferences(language: value));

    // print('VALUE $value BOX ${box.language}');
    // print('Provider $value');
    notifyListeners();
  }
}

class UserProvider extends ChangeNotifier {
  User user = User();

  // void updateUser(User update) {
  //   user.username = update.username;
  //   user.fullname = update.fullname;
  //   user.currentPos = update.currentPos;
  //   user.localPos = update.localPos;
  //   user.description = update.description;
  //   user.skills = update.skills;
  //   user.portfolioLinks = update.portfolioLinks;
  //   user.visic = update.visic;
  //   user.island = update.island;
  //   notifyListeners();
  // }
  void updateUserName(User update) {
    user.username = update.username;
    notifyListeners();
  }

  void updateUserFullName(User update) {
    user.fullname = update.fullname;
    notifyListeners();
  }

  void updateUserCurrentPos(User update) {
    user.currentPos = update.currentPos;
    notifyListeners();
  }

  void updateUserDescription(User update) {
    user.description = update.description;
    notifyListeners();
  }

  void updateUserSkills(User update) {
    user.skills = update.skills;
    notifyListeners();
  }

  void updateUserPortfolioLinks(User update) {
    user.portfolioLinks = update.portfolioLinks;
    notifyListeners();
  }

  void updateUserVisic(User update) {
    user.visic = update.visic;
    notifyListeners();
  }

  void updateUserIsland(User update) {
    user.island = update.island;
    notifyListeners();
  }
}
