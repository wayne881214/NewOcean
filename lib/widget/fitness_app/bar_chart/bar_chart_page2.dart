import 'package:flutter/material.dart';

import '../fitness_app_theme.dart';
import 'samples/bar_chart_sample2.dart';

class BarChartPage2 extends StatelessWidget {
  const BarChartPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: FitnessAppTheme.background,
      child: const Center(
        child: Padding(
          padding: EdgeInsets.all(28.0),
          child: BarChartSample2(),
        ),
      ),
    );
  }
}
