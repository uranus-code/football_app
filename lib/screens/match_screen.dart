import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:football_app/constants.dart';
import 'package:football_app/widgets/live_match_info_box.dart';
import 'package:football_app/widgets/stats_chart.dart';
import 'package:iconsax/iconsax.dart';

class MatchScreen extends StatefulWidget {
  const MatchScreen({super.key});

  @override
  State<MatchScreen> createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ksecondryBackgroundColor,
      appBar: AppBar(
        backgroundColor: ksecondryBackgroundColor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: kbackgroundColor,
            shadowColor: Colors.grey.shade200,
            elevation: 2,
          ),
          icon: const Icon(Iconsax.arrow_square_left),
        ),
        centerTitle: true,
        title: const Column(
          children: [
            Text(
              "Champions League",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "GROUP STAGE",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: kbackgroundColor,
                shadowColor: Colors.grey.shade200,
                elevation: 2,
              ),
              icon: const Icon(Iconsax.more_square),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 120),
              padding: const EdgeInsets.only(top: 180, right: 20, left: 20),
              decoration: BoxDecoration(
                color: kbackgroundColor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 20,
                  )
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: kprimaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 5,
                        ),
                        child: const Text(
                          "Stats",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: ksecondryBackgroundColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 5,
                        ),
                        child: const Text(
                          "H2H",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: ksecondryBackgroundColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 5,
                        ),
                        child: const Text(
                          "Table",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  const StatsChart(
                    homeStats: "3",
                    awayStats: "6",
                    statsTitle: "Shots On Target",
                    homeStatsCount: 80,
                    awayStatsCount: 20,
                    isHomeWinner: false,
                  ),
                  const StatsChart(
                    homeStats: "2",
                    awayStats: "0",
                    statsTitle: "Goals",
                    homeStatsCount: 120,
                    awayStatsCount: double.infinity,
                    isHomeWinner: true,
                  ),
                  const StatsChart(
                    homeStats: "66%",
                    awayStats: "34%",
                    statsTitle: "Possession",
                    homeStatsCount: 50,
                    awayStatsCount: 100,
                    isHomeWinner: true,
                  ),
                  const StatsChart(
                    homeStats: "0",
                    awayStats: "2",
                    statsTitle: "Yellow Cards",
                    homeStatsCount: double.infinity,
                    awayStatsCount: 100,
                    isHomeWinner: false,
                  ),
                  const StatsChart(
                    homeStats: "0",
                    awayStats: "1",
                    statsTitle: "Red Cards",
                    homeStatsCount: double.infinity,
                    awayStatsCount: 150,
                    isHomeWinner: false,
                  ),
                  const StatsChart(
                    homeStats: "4",
                    awayStats: "3",
                    statsTitle: "Corner Kicks",
                    homeStatsCount: 50,
                    awayStatsCount: 60,
                    isHomeWinner: true,
                  ),
                ],
              ),
            ),
            const Positioned(
              top: 20,
              right: 20,
              left: 20,
              child: LiveMatchInfoBox(),
            )
          ],
        ),
      ),
    );
  }
}
