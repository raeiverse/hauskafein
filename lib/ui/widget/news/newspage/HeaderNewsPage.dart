import 'package:flutter/material.dart';

import '../../../../theme.dart';

class HeaderNewsPage extends StatefulWidget {
  const HeaderNewsPage({super.key});

  @override
  State<HeaderNewsPage> createState() => _HeaderNewsPageState();
}

class _HeaderNewsPageState extends State<HeaderNewsPage> {
  String? selected;
  List<String> SortData = [
    'By Popularity',
    'By Reccomended',
    'By Date',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Text
          Container(
            margin: EdgeInsets.only(left: 24),
            child: Text(
              'News',
              style: TitleClashM.copyWith(color: Neutral100),
            ),
          ),
          // SORT
          Container(
            height: 36,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: orangeColor,
              borderRadius: BorderRadius.circular(28),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: DropdownButton(
                dropdownColor: orangeColor,
                // isExpanded: true,
                icon: Image(
                  image: AssetImage('assets/images/icon_dropdown.png'),
                  width: 16,
                  height: 16,
                  fit: BoxFit.contain,
                ),
                underline: SizedBox(),
                borderRadius: BorderRadius.circular(16),
                hint: Container(
                  child: Row(
                    children: [
                      Text(
                        'Sort By',
                        style: regularText.copyWith(
                          color: whiteColor,
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
                value: selected,
                items: SortData.map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: Container(
                      child: Row(
                        children: [
                          Text(
                            e,
                            style: regularText.copyWith(
                              color: whiteColor,
                              fontSize: 12,
                              fontWeight: medium,
                            ),
                          ),
                        ],
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
        ],
      ),
    );
  }
}
