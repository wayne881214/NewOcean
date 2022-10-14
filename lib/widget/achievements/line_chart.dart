import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../constants/achievements_theme.dart';


// Map api={
//   "userData" :[11,10,4,22,13,24,3,9,12,14,6,10],
//   "avgsData" :[21, 12, 13, 4,10, 12, 23, 14,10, 12, 3, 14]
// };

//xy軸比例
const double minX= 0;
const double maxX= 6;
const double minY= 0;
const double maxY= 500;
//縮放
const double inSize= 10000;

// double size_1_5= (maxY/5*1)*inSize;
// const double size_2_5= (maxY/5*2)*inSize;
// const double size_3_5= (maxY/5*3)*inSize;
// const double size_4_5= (maxY/5*4)*inSize;
//  double size_5_5= (maxY/5*5)*inSize;

class LineChart_widget extends StatefulWidget {
  final Map? api;
  const LineChart_widget({Key? key,this.api}) : super(key: key);
  @override
  _LineChart_widgetState createState() => _LineChart_widgetState();

}

class _LineChart_widgetState extends State<LineChart_widget>  {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];
  Map responseApi = {};
  // responseApi=widget.api;
  bool showAvg = false;

  @override
  Widget build(BuildContext context)  {
    responseApi=widget.api!;
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.70,
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
                color: achievementTheme.background),
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 18.0, left: 12.0, top: 24, bottom: 12),
              child: LineChart(
                showAvg ? avgData() : mainData(),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 60,
          height: 34,
          child: TextButton(
            onPressed: () {
              setState(() {
                showAvg = !showAvg;
              });
            },
            child: Text(
              '點我',
              style: TextStyle(
                  fontSize: 15,
                  color:
                      showAvg ? achievementTheme.darkerText : achievementTheme.darkerText),
            ),
          ),
        ),
      ],
    );
  }

//橫軸
  Widget bottomTitleWidgets(double value, TitleMeta meta)  {
    const style = TextStyle(
      color: Color(0xff68737d),
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('七天前', style: style);
        break;
      case 6:
        text = const Text('本日', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 8.0,
      child: text,
    );
  }
//直軸
  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff67727d),
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = '0';
        break;
      case 100:
        text = (100).toString()+'g';
        break;
      case 200:
        text = (200).toString()+'g';
        break;
      case 300:
        text = (300).toString()+'g';
        break;
      case 400:
        text = (400).toString()+'g';
        break;
      default:
        return Container();
    }
    return Text(text, style: style, textAlign: TextAlign.left);
  }
//個人資料設定
  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: achievementTheme.nearlyWhite,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: achievementTheme.nearlyWhite,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: minX,
      maxX: maxX,
      minY: minY,
      maxY: maxY,
      lineBarsData: [
        LineChartBarData(
          spots:[
            //好像不能塞迴圈

            FlSpot(0,responseApi["userData"][0]/inSize.toDouble()),
            FlSpot(1,responseApi["userData"][1]/inSize.toDouble()),
            FlSpot(2,responseApi["userData"][2]/inSize.toDouble()),
            FlSpot(3,responseApi["userData"][3]/inSize.toDouble()),
            FlSpot(4,responseApi["userData"][4]/inSize.toDouble()),
            FlSpot(5,responseApi["userData"][5]/inSize.toDouble()),
            FlSpot(6,responseApi["userData"][6]/inSize.toDouble()),

          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ],
    );
  }
//平均資料設定
  LineChartData avgData() {
    print('DDDD');
    print(responseApi["avgsData"][0]);
    print(responseApi["avgsData"][0]/inSize);
    return LineChartData(
      lineTouchData: LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        verticalInterval: 1,
        horizontalInterval: 1,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: achievementTheme.nearlyWhite,
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: achievementTheme.nearlyWhite,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: bottomTitleWidgets,
            interval: 1,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
            interval: 1,
          ),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: minX,
      maxX: maxX,
      minY: minY,
      maxY: maxY,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0,responseApi["avgsData"][0]/inSize.toDouble()),
            FlSpot(1,responseApi["avgsData"][1]/inSize.toDouble()),
            FlSpot(2,responseApi["avgsData"][2]/inSize.toDouble()),
            FlSpot(3,responseApi["avgsData"][3]/inSize.toDouble()),
            FlSpot(4,responseApi["avgsData"][4]/inSize.toDouble()),
            FlSpot(5,responseApi["avgsData"][5]/inSize.toDouble()),
            FlSpot(6,responseApi["avgsData"][6]/inSize.toDouble()),
            // FlSpot(7,responseApi["avgsData"][7].toDouble()),
            // FlSpot(8,responseApi["avgsData"][8].toDouble()),
            // FlSpot(9,responseApi["avgsData"][9].toDouble()),
            // FlSpot(10,responseApi["avgsData"][10].toDouble()),
            // FlSpot(11,responseApi["avgsData"][11].toDouble()),
            // FlSpot(2.6, 2),
            // FlSpot(4.9, 3.44),
            // FlSpot(6.8, 4),
            // FlSpot(8, 1),
            // FlSpot(9.5, 3.44),
            // FlSpot(11, 2),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: [
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ],
    );
  }
}
