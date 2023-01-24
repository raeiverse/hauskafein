import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hauskafein/theme.dart';
import 'package:hauskafein/ui/pages/BottomNavbar.dart';
import 'package:hauskafein/ui/widget/homepage/BottomSearchRecNavBar.dart';
import 'package:hauskafein/ui/widget/homepage/search/SearchFilter.dart';
import 'package:hauskafein/ui/widget/homepage/search/SearchPopular.dart';
import 'package:latlong2/latlong.dart';

import '../../../pages/BottomNavbarWidget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget BottomNavBar() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomNavbarWidget(
                    imageUrl: 'assets/images/icon_home.png',
                    title: 'Home',
                    pages: '/homepage',
                    isSelected: false,
                  ),
                  BottomNavbarWidget(
                    imageUrl: 'assets/images/icon_cafe.png',
                    title: 'Cafe',
                    pages: '/cafepage',
                    isSelected: true,
                  ),
                  BottomNavbarWidget(
                    imageUrl: 'assets/images/icon_news.png',
                    title: 'Magazine',
                    pages: '/magazinepage',
                    isSelected: false,
                  ),
                  BottomNavbarWidget(
                    imageUrl: 'assets/images/icon_recipe.png',
                    title: 'Recipe',
                    pages: '/recipepage',
                    isSelected: false,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 66),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: transparentColor,
                  ),
                  child: FlutterMap(
                    options: MapOptions(
                      center: LatLng(-7.8698049, 112.523706),
                      zoom: 12,
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
                            // width: 50,
                            // height: 69,
                            point: LatLng(-7.8698049, 112.523706),
                            builder: (ctx) => Image.asset(
                              'assets/images/point_1.png',
                              // width: 50,
                              // height: 69,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: [
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
                  Spacer(),
                  //BACKGROUND BOTTOM
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 302,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/images_searchBackgroundBottom.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SearchRecNavBar(
            baseColor: transparentColor,
            textColor: Neutral90,
            baseSColor: orangeColor,
            textSColor: Neutral10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SearchFilter(),
              SearchPopular(),
            ],
          ),
          //WHITE BACKGROUND NAVBAR
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 66,
              decoration: BoxDecoration(color: whiteColor),
            ),
          ),
          BottomNavBar(),
        ],
      ),
    );
  }
}
