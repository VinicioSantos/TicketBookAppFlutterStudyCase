import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/utils/app_layout.dart';
import 'package:flutter_application_1/utils/app_styles.dart';
import 'package:flutter_application_1/widgets/icon_text_widget.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are\nyou looking for?",
              style: Styles.headLineStyle
                  .copyWith(fontSize: AppLayout.getWidth(35)),
              textAlign: TextAlign.start),
          Gap(AppLayout.getHeight(20)),
          Container(
              padding: const EdgeInsets.all(3.5),
              child: Row(children: [
                /*
                airlines tickets
                */
                Container(
                    width: size.width * .44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(AppLayout.getHeight(50))),
                        color: Colors.white),
                    child: Center(
                      child: Text("Airline tickets"),
                    )),
                /*
                Hotels
                */
                FittedBox(
                  child: Container(
                      width: size.width * .44,
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(7)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(AppLayout.getHeight(50))),
                          color: Colors.transparent),
                      child: Center(
                        child: Text("Hotels"),
                      )),
                ),
              ]),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                  color: const Color(0xFFF4F6FD))),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(15)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrivel"),
        ],
      ),
    );
  }
}
