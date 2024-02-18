import 'package:flutter/material.dart';
import 'package:football_app/constants.dart';

class LiveMatchInfoBox extends StatelessWidget {
  const LiveMatchInfoBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kboxColor,
        borderRadius: BorderRadius.circular(25),
        image: const DecorationImage(
          image: AssetImage("assets/images/cl.png"),
          opacity: 0.2,
          alignment: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          const Text(
            "Camp Nou",
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Image.asset(
                "assets/images/FCBarcelona.png",
                width: 85,
                height: 85,
              ),
              const Spacer(),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffFFF4E5),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.circle,
                          color: kprimaryColor,
                          size: 10,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Live",
                          style: TextStyle(
                            color: kprimaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "2",
                          style: TextStyle(
                            fontSize: 36,
                            color: kprimaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: " : 0",
                          style: TextStyle(
                            fontSize: 36,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Fati 45+2'",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Depay 74'",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Icon(
                            Icons.sports_soccer,
                            color: Colors.white,
                            size: 15,
                          ),
                          SizedBox(height: 5),
                          Icon(
                            Icons.sports_soccer,
                            color: Colors.white,
                            size: 15,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Image.asset(
                "assets/images/Bayern.png",
                width: 85,
                height: 85,
              ),
            ],
          ),
          const Spacer(),
          SizedBox(
            height: 20,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  height: 15,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  right: 60,
                  left: 0,
                  top: 3,
                  bottom: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      color: kprimaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 3,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      "ST",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: MediaQuery.of(context).size.width / 2 -
                      MediaQuery.of(context).size.width / 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 3,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      "HT",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 3,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      "FT",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
