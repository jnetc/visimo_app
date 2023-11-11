import 'package:flutter/material.dart';
import 'package:flutter_visimo/models/user.dart';

class UserProvider extends ChangeNotifier {
  User user = User();

  void updateUser(User update) {
    user.username = update.username;
    user.fullname = update.fullname;
    user.currentPos = update.currentPos;
    user.localPos = update.localPos;
    user.description = update.description;
    user.skills = update.skills;
    user.portfolioLinks = update.portfolioLinks;
    user.visic = update.visic;
    user.island = update.island;
    notifyListeners();
  }
}
