import 'package:flutter/material.dart';

import '../../../../theme.dart';

class SearchFilter extends StatelessWidget {
  const SearchFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Your Nearby',
              style: TitleClashL.copyWith(
                color: Neutral100,
              ),
            ),
          ),
          Row(
            children: [
              // SEARCH
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                width: MediaQuery.of(context).size.width / 1.35,
                height: 36,
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
              // FILTER
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/filterpage');
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: orangeColor,
                      borderRadius: BorderRadius.circular(28),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          height: 36,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/icon_filter.png',
                                width: 20,
                                height: 20,
                                color: whiteColor,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Filter',
                                style: BodyRegular.copyWith(
                                  color: whiteColor,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
