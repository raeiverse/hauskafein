import 'package:flutter/material.dart';

import '../../../theme.dart';

class Today_Header extends StatefulWidget {
  const Today_Header({super.key});

  @override
  State<Today_Header> createState() => _Today_HeaderState();
}

class _Today_HeaderState extends State<Today_Header> {
  String? selected;
  List<String> LocData = [
    'Tulungagung',
    'Kediri',
    'Blitar',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 16,
        left: 24,
        bottom: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello, Guest',
            style: titleText.copyWith(fontWeight: semiBold, fontSize: 24),
          ),
          Row(
            children: [
              Flexible(
                child: Text(
                  'Mau minum kopi dimana hari ini?',
                  style: regularText,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              SizedBox(width: 4),
              // PILIH KOTA
              Container(
                child: DropdownButton(
                  borderRadius: BorderRadius.circular(8),
                  hint: Text(
                    'Pilih Kotamu..',
                    style: regularText.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  value: selected,
                  items: LocData.map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(
                        e,
                        style: regularText.copyWith(
                          fontWeight: medium,
                          fontSize: 14,
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
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 18, bottom: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Today's",
                      style: titleText.copyWith(
                          fontWeight: semiBold, fontSize: 20),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 4),
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/icon_hot.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
