import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

//color
Color blackColor = Color(0xff0A0A0A);
Color whiteColor = Color(0xffFFFFFF);
Color grayColor = Color(0xff9E9E9E);
Color transparentColor = Colors.transparent;
Color Neutral10 = Color(0xffFFFFFF);
Color Neutral20 = Color(0xffF4F4F4);
Color Neutral30 = Color(0xffECECEC);
Color Neutral40 = Color(0xffE0E0E0);
Color Neutral50 = Color(0xffC2C2C2);
Color Neutral60 = Color(0xff9E9E9E);
Color Neutral70 = Color(0xff757575);
Color Neutral80 = Color(0xff616161);
Color Neutral90 = Color(0xff404040);
Color Neutral100 = Color(0xff0A0A0A);
Color orangeColor = Color(0xffFF5301);

TextStyle titleText = TextStyle(fontFamily: 'ClashDisplay', color: blackColor);
TextStyle regularText = GoogleFonts.poppins(color: blackColor);

//padding
Padding backbutton = Padding(
  padding: EdgeInsets.only(left: 24, top: 44),
);

//border
BorderRadius CardRadius = BorderRadius.all(Radius.circular(8));

//fontweight
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

//textstyles
TextStyle TitleClashLSB = TextStyle(
  fontFamily: 'ClashDisplaySB',
  // fontWeight: regular,
  // fontSize: 28,
);
TextStyle TitleClashL = TextStyle(
  fontFamily: 'ClashDisplaySB',
  fontWeight: semiBold,
  fontSize: 28,
);
TextStyle TitleClashM = TextStyle(
  fontFamily: 'ClashDisplaySB',
  fontWeight: semiBold,
  fontSize: 20,
);
TextStyle TitleClashS = TextStyle(
  fontFamily: 'ClashDisplaySB',
  fontWeight: semiBold,
  fontSize: 18,
);
TextStyle TitleL = GoogleFonts.poppins(
  fontWeight: bold,
  fontSize: 24,
);
TextStyle TitleM = GoogleFonts.poppins(
  fontWeight: bold,
  fontSize: 20,
);
TextStyle TitleS = GoogleFonts.poppins(
  fontWeight: bold,
  fontSize: 18,
);
TextStyle HeadlineHead = GoogleFonts.poppins(
  fontWeight: semiBold,
  fontSize: 14,
);
TextStyle HeadlineSub = GoogleFonts.poppins(
  fontWeight: medium,
  fontSize: 14,
);
TextStyle BodyRegular = GoogleFonts.poppins(
  fontWeight: regular,
  fontSize: 12,
);
TextStyle BodyMedium = GoogleFonts.poppins(
  fontWeight: medium,
  fontSize: 12,
);
TextStyle CaptionRegular = GoogleFonts.poppins(
  fontWeight: regular,
  fontSize: 10,
);
TextStyle CaptionMedium = GoogleFonts.poppins(
  fontWeight: medium,
  fontSize: 10,
);
