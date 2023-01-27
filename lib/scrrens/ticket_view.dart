import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/utils/app_layout.dart';
import 'package:flutter_application_1/utils/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFF526799),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(21), topRight: Radius.circular(21)),
          ),
          margin: const EdgeInsets.only(left: 16),
          padding: const EdgeInsets.all(16),
          child: Column(children: [
            Row(
              children: [
                Text("Nyc",
                    style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                const Spacer(),
                Text("London",
                    style: Styles.headLineStyle3.copyWith(color: Colors.white)),
              ],
            )
          ]),
        )
      ]),
    );
  }
}
