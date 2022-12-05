import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';

class SearchSortCafePage extends StatefulWidget {
  SearchSortCafePage({super.key});

  @override
  State<SearchSortCafePage> createState() => _SearchSortCafePageState();
}

class _SearchSortCafePageState extends State<SearchSortCafePage> {
  String? selected;
  List<String> SortData = [
    'Reccomended',
    'Popularity',
    'Distance',
    'Rating',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            width: MediaQuery.of(context).size.width / 1.7,
            height: 48,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: blackColor.withOpacity(0.15),
                  blurRadius: 4,
                  offset: Offset(0, 5),
                ),
              ],
              color: whiteColor,
              borderRadius: BorderRadius.all(
                Radius.circular(28),
              ),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16),
                  width: 24,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/icon_search.png'),
                        fit: BoxFit.contain),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: TextFormField(
                      style: regularText.copyWith(
                        fontSize: 16,
                        color: blackColor.withOpacity(0.8),
                      ),
                      decoration: InputDecoration(
                        hintText: 'Search Cafe',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                color: orangeColor,
                borderRadius: BorderRadius.circular(36),
              ),
              child: DropdownButton(
                dropdownColor: orangeColor,
                isExpanded: true,
                iconSize: 0,
                underline: SizedBox(),
                borderRadius: BorderRadius.circular(16),
                hint: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Sort By',
                          style: regularText.copyWith(
                            color: whiteColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          child: Container(
                            width: 24,
                            height: MediaQuery.of(context).size.height,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/icon_dropdown.png'),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                value: selected,
                items: SortData.map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              e,
                              style: regularText.copyWith(
                                color: whiteColor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              child: Container(
                                width: 24,
                                height: MediaQuery.of(context).size.height,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/icon_dropdown.png'),
                                      fit: BoxFit.contain),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ).toList(),
                onChanged: ((value) {
                  setState(() {
                    selected = value;
                  });
                }),
              ),
            ),
          ),
          // Container(
          //   margin: EdgeInsets.only(right: 16),
          //   width: MediaQuery.of(context).size.width / 4,
          //   height: 48,
          //   decoration: BoxDecoration(
          //     boxShadow: [
          //       BoxShadow(
          //         color: orangeColor.withOpacity(0.15),
          //         blurRadius: 4,
          //         offset: Offset(0, 5),
          //       ),
          //     ],
          //     color: orangeColor,
          //     borderRadius: BorderRadius.all(
          //       Radius.circular(28),
          //     ),
          //   ),
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 8),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         Text(
          //           'Sort By',
          //           style: regularText.copyWith(
          //             color: whiteColor,
          //           ),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.symmetric(vertical: 14),
          //           child: Container(
          //             width: 24,
          //             height: MediaQuery.of(context).size.height,
          //             decoration: BoxDecoration(
          //               image: DecorationImage(
          //                   image:
          //                       AssetImage('assets/images/icon_dropdown.png'),
          //                   fit: BoxFit.contain),
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
