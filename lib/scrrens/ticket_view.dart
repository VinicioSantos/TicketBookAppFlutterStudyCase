import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/utils/app_layout.dart';
import 'package:flutter_application_1/utils/app_styles.dart';
import 'package:gap/gap.dart';

import '../widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.80,
      height: AppLayout.getHeight(200),
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFF526799),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(21), topRight: Radius.circular(21)),
          ),
          margin: EdgeInsets.only(left: AppLayout.getHeight(16)),
          padding: EdgeInsets.all(AppLayout.getHeight(16)),
          child: Column(children: [
            Row(
              children: [
                Text(ticket['from']['code'],
                    style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                Expanded(child: Container()),
                ThickContainer(),
                Expanded(
                    child: Stack(
                  children: [
                    SizedBox(
                      height: AppLayout.getHeight(24),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext builder, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (constraints.constrainWidth() / 6).floor(),
                                (index) => SizedBox(
                                    width: 3,
                                    height: 1,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.5)),
                                    ))),
                          );
                        },
                      ),
                    ),
                    Center(
                      child: Transform.rotate(
                        angle: 1.5,
                        child: Icon(Icons.local_airport_rounded,
                            color: Colors.white),
                      ),
                    ),
                  ],
                )),
                ThickContainer(),
                const Spacer(),
                Text(ticket['to']['code'],
                    style: Styles.headLineStyle3.copyWith(color: Colors.white)),
              ],
            ),
            const Gap(3),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: AppLayout.getWidth(100),
                    child: Text(
                      ticket['from']['name'],
                      style:
                          Styles.headLineStyle4.copyWith(color: Colors.white),
                    )),
                Text(ticket['flying_time'],
                    style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                SizedBox(
                    width: AppLayout.getWidth(100),
                    child: Text(
                      ticket['to']['name'],
                      textAlign: TextAlign.end,
                      style:
                          Styles.headLineStyle4.copyWith(color: Colors.white),
                    )),
              ],
            )
          ]),
        ),
        Container(
          color: Styles.orangeColor,
          margin: const EdgeInsets.only(left: 16),
          child: Row(children: [
            SizedBox(
                height: AppLayout.getHeight(20),
                width: AppLayout.getWidth(10),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )),
                )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: LayoutBuilder(
                builder: (BuildContext builder, BoxConstraints constraints) {
                  return Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(
                        (constraints.constrainWidth() / 15).floor(),
                        (index) => SizedBox(
                            width: 3,
                            height: 1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.5)),
                            ))),
                  );
                },
              ),
            )),
            SizedBox(
                height: AppLayout.getHeight(20),
                width: AppLayout.getWidth(10),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      )),
                )),
          ]),
        ),
        Container(
          margin: const EdgeInsets.only(left: 16),
          decoration: BoxDecoration(
            color: Styles.orangeColor,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(21),
                bottomRight: Radius.circular(21)),
          ),
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 16),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(ticket['date'],
                    style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                Gap(AppLayout.getHeight(5)),
                Text("DATE",
                    style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                Gap(AppLayout.getHeight(3)),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(ticket['departure_time'],
                    style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                Gap(AppLayout.getHeight(5)),
                Text("Departure Time",
                    style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                Gap(AppLayout.getHeight(3)),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(ticket['number'].toString(),
                    style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                Gap(AppLayout.getHeight(5)),
                Text("Number",
                    style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                Gap(AppLayout.getHeight(3)),
              ],
            ),
          ]),
        )
      ]),
    );
  }
}
