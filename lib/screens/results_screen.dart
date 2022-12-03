import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:world_cup/constants/colors.dart';
import 'package:world_cup/providers/buttons_provider.dart';
// ignore: unused_import
import 'package:world_cup/widgets/country_table.dart';
import 'package:world_cup/widgets/groups_table.dart';
import 'package:world_cup/widgets/results_options.dart';
import 'package:world_cup/widgets/rounds_bar.dart';
import 'package:world_cup/widgets/stat_information.dart';
import 'package:world_cup/widgets/stats_bar.dart';

class ResultScreen extends ConsumerWidget {
  static const String routeName = "/results";
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final button = ref.watch(buttonProvider);
    bool tables = button == "GroupsTables";
    bool stats = button == "stat";

    var table = [
      const RoundsBar(),
      const SizedBox(height: 30),
      const GroupsTables(),
    ];
    var stat = [
      const StatsBar(),
      const SizedBox(height: 30),
      const StatInformation(),
    ];
    return Scaffold(
      backgroundColor: kBurgundyColor,
      body: SingleChildScrollView(
          child: Container(
        margin: const EdgeInsets.only(top: 60.0),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const ResultsOptionsBar(),
              const SizedBox(height: 30),
              if (tables) ...table,
              if (stats) ...stat,
            ],
          ),
        ),
      )),
    );
  }
}
