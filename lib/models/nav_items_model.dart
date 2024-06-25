import 'package:app_shoes_ec/models/rive_model.dart';

class NavItemsModel {
  final String title;
  final RiveModel rive;
  NavItemsModel({required this.title, required this.rive});
}

List<NavItemsModel> navItems = [
  NavItemsModel(
    title: "Home",
    rive: RiveModel(
      src: "assets/rive/home.riv",
      artboard: "HOME",
      stateMachineName: "HOME_Interactivity",
    ),
  ),
];