import 'package:flutter/material.dart';

import '../../theme.dart';

class ArticleCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String desc;
  final String date;
  const ArticleCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.desc,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: blackColor.withOpacity(0.15),
                    blurRadius: 35,
                    offset: Offset(0, 5),
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(8),
                        ),
                        image: DecorationImage(
                            image: AssetImage(imageUrl), fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      child: Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                            right: 23,
                            top: 9,
                            bottom: 9,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: regularText.copyWith(
                                  fontSize: 12,
                                  fontWeight: medium,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                desc,
                                style: regularText.copyWith(
                                  fontSize: 10,
                                  color: blackColor.withOpacity(0.9),
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                              Spacer(),
                              Text(
                                date,
                                style: regularText.copyWith(
                                  fontSize: 10,
                                  color: blackColor.withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
