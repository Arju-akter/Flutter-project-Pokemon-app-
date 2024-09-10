import 'package:flutter/material.dart';
import 'package:pokemon_1/Widgets/my_title.dart';
import 'package:pokemon_1/Widgets/power_badge.dart';

import '../Widgets/feature_title_text.dart';
import '../Widgets/feature_value_text.dart';

class DetailsPage extends StatelessWidget {
  final Map? data;
  const DetailsPage({
    super.key,
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 177, 208, 74),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyTitle(
                              text: "${data!["name"]}", color: Colors.white),
                          Row(
                              children:
                                  // Powerbadge(
                                  //   text: data!.containsKey("type")
                                  //       ? "${data!["type"]![0]}"
                                  //       : "No Power",
                                  // ),
                                  // for (String item in data!["type"])
                                  //   Powerbadge(text: "$item")
                                  data!["type"]
                                      .map<Widget>(
                                          (item) => Powerbadge(text: "$item"))
                                      .toList()),
                          Container(
                            height: 190.0,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(34.0),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    child: Row(children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.only(top: 60.0),
                          height: double.infinity,
                          child: const Column(
                            children: [
                              FeatureTitleText(text: "Height"),
                              FeatureTitleText(text: "Weight"),
                              FeatureTitleText(text: "Candy"),
                              FeatureTitleText(text: "Egg"),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.only(top: 60.0),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FeatureValueText(text: "${data!["height"]}"),
                              FeatureValueText(text: "${data!["weight"]}"),
                              FeatureValueText(text: "${data!["candy"]}"),
                              FeatureValueText(text: "${data!["egg"]}"),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 160.0,
              child: Container(
                child: Hero(
                  tag: 'pokecard-${data!["nam"]}',
                  child: Image.network(
                    "${data!["img"]}",
                    height: 200.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
