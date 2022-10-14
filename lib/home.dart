import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter Chart'),
      ),
      body: SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          title: ChartTitle(text: 'Monthly Covid Infections in 2021'),
          legend: Legend(isVisible: true),
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <ChartSeries<Infections, dynamic>>[
            LineSeries<Infections, dynamic>(
                dataSource: <Infections>[
                  Infections('JAN', 168245),
                  Infections('FEB', 130225),
                  Infections('MAR', 65181),
                  Infections('APR', 446599),
                  Infections('MAY', 955396),
                  Infections('JUN', 397586),
                  Infections('JUL', 466596),
                  Infections('AUG', 666472),
                  Infections('SEP', 623625),
                  Infections('OCT', 287799),
                  Infections('NOV', 173157),
                  Infections('DEC', 105363),
                ],
                xValueMapper: (Infections victims, _) => victims.year,
                yValueMapper: (Infections victims, _) => victims.victims,
                dataLabelSettings: DataLabelSettings(isVisible: true),
                name: 'Infections')
          ]),
    );
  }
}

class Infections {
  Infections(this.year, this.victims);
  final dynamic year;
  final double victims;
}
