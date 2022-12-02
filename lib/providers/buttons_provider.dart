import 'package:flutter_riverpod/flutter_riverpod.dart';

  String button = "GroupsTables";
  


final buttonProvider = StateProvider<String>((ref) {
  return button;
});