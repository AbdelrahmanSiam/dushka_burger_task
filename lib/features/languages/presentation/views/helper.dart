import 'package:dusks_burger_task/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void goToHome(BuildContext context) {
  (context).go(AppRouter.homeView);
}