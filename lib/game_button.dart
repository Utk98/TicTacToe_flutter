import 'package:flutter/material.dart';

class Gamebutton {
  late final id;
  late String text;
  late Color bg;
  late bool enabled;

  Gamebutton({this.id,this.text="",this.bg = Colors.grey,this.enabled=true});
}