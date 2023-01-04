import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hauskafein/cubit/pages_cubit.dart';
import 'package:hauskafein/ui/pages/Mainpage.dart';
import 'package:hauskafein/ui/pages/cafepage.dart';
import 'package:hauskafein/ui/pages/homepage.dart';
import 'package:hauskafein/ui/pages/magazinepage.dart';
import 'package:hauskafein/ui/pages/recipepage.dart';
import 'package:hauskafein/ui/widget/cafe/FilterPage.dart';
import 'package:hauskafein/ui/widget/cafe/cafeprofile/MainCafeProfile.dart';
import 'package:hauskafein/ui/widget/event/eventpage/ArticleEventPage.dart';
import 'package:hauskafein/ui/widget/event/eventpage/EventPage.dart';
import 'package:hauskafein/ui/widget/homepage/search/SearchPage.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PagesCubit(),
        ),
        BlocProvider(
          create: (context) => ContentCubit(),
        ),
        BlocProvider(
          create: (context) => MenuTagCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          // '/': (context) => Mainpage(),
          '/': (context) => Homepage(),
          '/homepage': (context) => Homepage(),
          '/cafeprofile': (context) => MainCafeProfile(),
          '/cafepage': (context) => CafePage(),
          '/magazinepage': (context) => MagazinePage(),
          '/articlepage': (context) => ArticleEventPage(),
          '/recipepage': (context) => RecipePage(),
          '/filterpage': (context) => FilterPage(),
          '/searchpage': (context) => SearchPage(),
          '/eventpage': (context) => EventPage(),
        },
      ),
    );
  }
}
