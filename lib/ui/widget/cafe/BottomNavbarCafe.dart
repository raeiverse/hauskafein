import 'package:flutter/material.dart';
import 'package:hauskafein/ui/pages/GlobalBottomNavBar.dart';
import 'package:hauskafein/ui/widget/cafe/FilterBarCafe.dart';

class BottomNavbarCafe extends StatefulWidget {
  const BottomNavbarCafe({super.key});

  @override
  State<BottomNavbarCafe> createState() => _BottomNavbarCafeState();
}

class _BottomNavbarCafeState extends State<BottomNavbarCafe> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FilterBarCafe(),
        GlobalBottomNavBar(),
      ],
    );
  }
}
