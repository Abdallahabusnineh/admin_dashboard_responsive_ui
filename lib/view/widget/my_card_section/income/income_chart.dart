import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1,
    child: PieChart(getChartData()));
  }
  PieChartData getChartData() {
    return PieChartData(
      borderData: FlBorderData(show: false),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          showTitle: false,
          color: const Color(0xff208CC8),
          value: 40,
          radius: 20,
          
        ),
        PieChartSectionData(
          showTitle: false,

          color: const Color(0xFF4EB7F2),
          value: 25,
          radius: 20,

        ),
        PieChartSectionData(
          showTitle: false,
radius: 20,
          color: const Color(0xff064061),
          value: 20,

    ),
        PieChartSectionData(
          radius: 20,
          showTitle: false,
          color: const Color(0xFFE2DECD),
          value: 22,

    ),

      ],
    );
  }
  }


