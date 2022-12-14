import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/pages/BottomNavbar.dart';
import 'package:hauskafein/ui/widget/homepage/BottomSearchRecNavBar.dart';
import 'package:hauskafein/ui/widget/homepage/search/SearchFilter.dart';
import 'package:latlong2/latlong.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 413,
                decoration: BoxDecoration(
                  color: transparentColor,
                ),
                child: FlutterMap(
                  options: MapOptions(
                    center: LatLng(-8.07323580, 111.90734310),
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      userAgentPackageName:
                          'dev.hauskafein.flutter_map.example',
                    ),
                    MarkerLayer(
                      markers: [
                        Marker(
                          point: LatLng(-7.8698049, 112.523706),
                          builder: (ctx) => Icon(Icons.pin_drop),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              //BACKGROUND TOP
              Container(
                width: MediaQuery.of(context).size.width,
                height: 223,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/images_searchBackground.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
          SearchRecNavBar(
            baseColor: transparentColor,
            textColor: Neutral90,
            baseSColor: orangeColor,
            textSColor: Neutral10,
          ),
          SearchFilter(),
          BottomNavbar(),
        ],
      ),
    );
  }
}
