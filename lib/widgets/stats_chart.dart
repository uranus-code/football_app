import 'package:flutter/material.dart';
import 'package:football_app/constants.dart';

class StatsChart extends StatelessWidget {
  final String homeStats, awayStats, statsTitle;
  final double homeStatsCount, awayStatsCount;
  final bool isHomeWinner;
  const StatsChart({
    super.key,
    required this.homeStats,
    required this.awayStats,
    required this.statsTitle,
    required this.homeStatsCount,
    required this.awayStatsCount,
    required this.isHomeWinner,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                homeStats,
                style: TextStyle(
                  color: isHomeWinner ? kprimaryColor : ksecondryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                statsTitle,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              Text(
                awayStats,
                style: TextStyle(
                  color: !isHomeWinner ? kprimaryColor : ksecondryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SizedBox(
                  height: 10,
                  child: Stack(
                    children: [
                      Container(
                        height: 10,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: ksecondryBackgroundColor,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        left: homeStatsCount,
                        top: 0,
                        bottom: 0,
                        child: Container(
                          height: 10,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color:
                                isHomeWinner ? kprimaryColor : ksecondryColor,
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: SizedBox(
                  height: 10,
                  child: Stack(
                    children: [
                      Container(
                        height: 10,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: ksecondryBackgroundColor,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: awayStatsCount,
                        top: 0,
                        bottom: 0,
                        child: Container(
                          height: 10,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color:
                                !isHomeWinner ? kprimaryColor : ksecondryColor,
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
