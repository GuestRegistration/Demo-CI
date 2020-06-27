import 'package:democi/app.dart';
import 'package:democi/config_reader.dart';
import 'package:democi/flavour/flavor_config.dart';
import 'package:democi/main_common.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await mainCommon(Flavor.PRODUCTION);
}