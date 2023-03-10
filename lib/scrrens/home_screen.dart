import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/scrrens/hotel_screen.dart';
import 'package:flutter_application_1/scrrens/ticket_view.dart';
import 'package:flutter_application_1/utils/app_info_list.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: Styles.headLineStyle3),
                        const Gap(5),
                        Text("Book Tickets", style: Styles.headLineStyle),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage('assets/images/img_1.png'),
                          )),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                      color: Styles.bgColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 5)
                      ]),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text("Search", style: Styles.headLineStyle4),
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcomming Flights", style: Styles.headLineStyle2),
                    InkWell(
                      onTap: () {
                        print("View all");
                      },
                      child: Text("View all",
                          style: Styles.textStyle
                              .copyWith(color: Styles.primaryColor)),
                    ),
                  ],
                ),
              ]),
            ),
            const Gap(15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                  children: ticketList
                      .map((singleTicket) => TicketView(ticket: singleTicket))
                      .toList()),
            ),
            const Gap(15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hotels", style: Styles.headLineStyle2),
                  InkWell(
                    onTap: () {
                      print("View all");
                    },
                    child: Text("View all",
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor)),
                  ),
                ],
              ),
            ),
            const Gap(15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                  children: hotelList
                      .map((hotel) => HotelScreen(hotel: hotel))
                      .toList()),
            ),
          ],
        ));
  }
}
