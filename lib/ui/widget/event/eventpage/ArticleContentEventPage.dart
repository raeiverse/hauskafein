import 'package:flutter/material.dart';

import '../../../../theme.dart';

class ArticleContentEventPage extends StatelessWidget {
  const ArticleContentEventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height / 2.56,
        ),
        width: MediaQuery.of(context).size.width / 1.14,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              offset: Offset(0, 5),
              color: blackColor.withOpacity(0.15),
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0, 0),
            colors: <Color>[
              whiteColor.withOpacity(0),
              whiteColor,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Ngopi Bareng Kopi Sore',
                  style: TitleClashL.copyWith(color: Neutral100),
                ),
              ),
              SizedBox(height: 32),
              // CALENDAR
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icon_calendar.png',
                      width: 18,
                      height: 18,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(width: 8),
                    Text(
                      '17 Jan, 2021',
                      style: BodyRegular.copyWith(
                        color: Neutral90,
                      ),
                    ),
                  ],
                ),
              ),
              // LOCATION
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icon_loc.png',
                      width: 18,
                      height: 18,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Raos Kopi'),
                          Text(
                            'Jl. A Yani Timur no.XX, Tulungagung',
                            style: BodyRegular.copyWith(
                              color: Neutral60,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // TIME
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icon_time.png',
                      width: 18,
                      height: 18,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(width: 8),
                    Text(
                      '15.00 - 18.00',
                      style: BodyRegular.copyWith(
                        color: Neutral90,
                      ),
                    ),
                  ],
                ),
              ),
              // PHONE NUMBER
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icon_call.png',
                      width: 18,
                      height: 18,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(width: 8),
                    Text(
                      '+6285-9978-XXXX',
                      style: BodyRegular.copyWith(
                        color: Neutral90,
                      ),
                    ),
                  ],
                ),
              ),
              // AGENDA
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Agenda',
                  style: BodyRegular.copyWith(
                    color: Neutral60,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  'This container contain description of expert verified user who objectively leave their review for this cafe. Verified expert should fill this review at least 500 words to be accepted by system.\n\nThis container contain description of expert verified user who objectively leave their review for this cafe. Verified expert should fill this review at least 500 words to be accepted by system.This container contain description of expert verified user who objectively leave their review for this cafe.',
                  style: BodyRegular.copyWith(
                    color: Neutral90,
                    fontSize: 16,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/images/logo_twitter.png',
                    width: 24,
                    height: 24,
                  ),
                  Image.asset(
                    'assets/images/logo_fb.png',
                    width: 24,
                    height: 24,
                  ),
                  Image.asset(
                    'assets/images/logo_copyUrl.png',
                    width: 24,
                    height: 24,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
