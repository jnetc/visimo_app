import 'package:flutter/material.dart';
import 'package:flutter_visimo/models/user.dart';

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
