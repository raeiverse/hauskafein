import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoOverview extends StatelessWidget {
  final String address;
  final String day;
  final String open;
  final String closed;
  final String instaUrl;
  final String phoneNumber;

  const InfoOverview({
    Key? key,
    this.address = '',
    this.day = '',
    required this.open,
    required this.closed,
    this.instaUrl = '',
    this.phoneNumber = '',
  }) : super(key: key);

  @override
  _launchInstagramUrl() async {
    Uri url = Uri.parse('https://www.' + instaUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchContactNumber() async {
    Uri Contact = Uri.parse('tel://' + phoneNumber);
    if (await canLaunchUrl(Contact)) {
      await launchUrl(Contact);
    } else {
      throw 'Could not launch $Contact';
    }
  }

  Widget AddressWidget() {
    return Container(
      margin: EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Address',
            style: BodyRegular.copyWith(
              color: Neutral100,
            ),
          ),
          SizedBox(height: 4),
          Text(
            address,
            style: BodyRegular.copyWith(
              color: Neutral80,
            ),
          ),
        ],
      ),
    );
  }

  Widget OpenHoursWidget() {
    return Container(
      margin: EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Open Hours',
                style: BodyRegular.copyWith(
                  color: Neutral100,
                ),
              ),
              Spacer(),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/icon_down.png'),
                      fit: BoxFit.contain),
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Text(
            day + ',' + open + '-' + closed,
            style: BodyRegular.copyWith(
              color: Neutral80,
            ),
          ),
        ],
      ),
    );
  }

  Widget SocialMediaWidget() {
    return Container(
      margin: EdgeInsets.only(top: 16, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Social media',
            style: BodyRegular.copyWith(
              color: Neutral100,
            ),
          ),
          SizedBox(height: 4),
          GestureDetector(
            onTap: () {
              _launchInstagramUrl();
            },
            child: Text(
              instaUrl,
              style: BodyRegular.copyWith(
                color: orangeColor,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget ContactWidget() {
    return Container(
      margin: EdgeInsets.only(top: 16, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact',
            style: BodyRegular.copyWith(
              color: Neutral100,
            ),
          ),
          SizedBox(height: 4),
          GestureDetector(
            onTap: () {
              _launchContactNumber();
            },
            child: Text(
              phoneNumber,
              style: BodyRegular.copyWith(
                color: orangeColor,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget EquipmentWidget() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'Equipment',
              style: BodyRegular.copyWith(
                color: Neutral100,
              ),
            ),
          ),
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 16, right: 8),
          //     child: Row(
          //       children: [
          //         Column(
          //           children: [
          //             Container(
          //               margin: EdgeInsets.only(
          //                 top: 4,
          //                 bottom: 8,
          //                 right: 8,
          //               ),
          //               width: 220,
          //               height: 140,
          //               decoration: BoxDecoration(
          //                 image: DecorationImage(
          //                     image: AssetImage(imageUrl), fit: BoxFit.fill),
          //               ),
          //             ),
          //             Text(
          //               caption,
          //               style: CaptionRegular.copyWith(
          //                 color: Neutral80,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AddressWidget(),
          OpenHoursWidget(),
          SocialMediaWidget(),
          ContactWidget(),
          EquipmentWidget(),
        ],
      ),
    );
  }
}
