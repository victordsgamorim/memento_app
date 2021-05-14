import 'package:flutter/material.dart';
import 'package:memento_app/app/modules/home/page/model_components/add_reminder/body/nav_add_item_body_form.dart';
import 'package:memento_app/app/modules/home/page/model_components/add_reminder/nav_add_item_fab.dart';
import 'package:memento_app/app/modules/home/page/model_components/add_reminder/nav_add_item_top.dart';
import 'package:memento_app/app/modules/home/page/model_components/add_reminder/nav_item_lis_mid.dart';
import 'package:memento_app/constants/general_app_constants.dart';
import 'package:memento_app/models/nav_option_card_base.dart';

class HomeAddItemList extends StatelessWidget {
  final NavOptionCardBase model;

  const HomeAddItemList({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final width = _size.width;
    final height = _size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        color: GeneralAppColor.appBackgroundGray,
        child: Column(
          children: [
            NavAddItemTop(width, height),
            NavAddItemMid(width, height),
            NavAddItemBodyForm(width, height)
          ],
        ),
      ),
      floatingActionButton: NavAddItemFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}