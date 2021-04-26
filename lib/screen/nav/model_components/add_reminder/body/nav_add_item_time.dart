import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/icon_data.dart';
import 'package:memento_app/screen/nav/model_components/add_reminder/body/nav_add_day_time_model.dart';

class NavAddItemTime extends NavAddDayTimeModel {

  static final _TEXT = 'Definir Hora';
  static final _ICON = Icons.watch_later;
  NavAddItemTime() : super(_TEXT, _ICON);
}