// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

import 'package:flutter_application_1/utils/app_layout.dart';
import 'package:flutter_application_1/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelScreen({
    Key? key,
    required this.hotel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
        width: size.width * 0.6,
        height: AppLayout.getHeight(350),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 2, spreadRadius: 1)
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: AppLayout.getHeight(180),
              decoration: BoxDecoration(
                color: Styles.primaryColor,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage("assets/images/${hotel['image']}"),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(10)),
            Text("${hotel['place']}",
                style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor)),
            Gap(AppLayout.getHeight(5)),
            Text("${hotel['destination']}",
                style: Styles.headLineStyle3.copyWith(color: Colors.white)),
            Gap(AppLayout.getHeight(8)),
            Text("\$${hotel['price']}/night",
                style: Styles.headLineStyle.copyWith(color: Styles.kakiColor)),
          ],
        ));
  }
}
