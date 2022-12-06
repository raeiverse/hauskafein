import 'package:flutter/material.dart';

import 'package:hauskafein/ui/widget/homepage/BottomSearchRecNavBar.dart';
import 'package:hauskafein/ui/widget/homepage/NewsHomepage.dart';
import 'package:hauskafein/ui/widget/homepage/event_homepage.dart';
import 'package:hauskafein/ui/widget/homepage/today_homepage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Today_Homepage(),
                  Event_Homepage(),
                  NewsHomepage(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 7.2,
                  )
                ],
              ),
            ),
          ),
          SearchRecNavBar(),
          // BottomNavBar(),
        ],
      ),
    );
  }
}
