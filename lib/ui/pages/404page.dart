import 'package:flutter/material.dart';
import 'package:hauskafein/theme.dart';

class errorpage extends StatelessWidget {
  const errorpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 136),
          child: Column(
            children: [
              Image.asset(
                'assets/images/images_error.png',
                width: MediaQuery.of(context).size.width / 2.3,
                height: MediaQuery.of(context).size.height / 8.2,
                fit: BoxFit.fill,
              ),
              Text(
                'we’re sorry, you lost your connection',
                style: HeadlineSub.copyWith(
                  color: Neutral90,
                ),
              ),
              Text(
                'please re-check it again',
                style: HeadlineSub.copyWith(
                  color: Neutral90,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 24),
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 23.2,
                  decoration: BoxDecoration(
                    color: orangeColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(32),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Back to Home',
                        style: HeadlineSub.copyWith(
                          color: Neutral10,
                        ),
                      ),
                      Image.asset(
                        'assets/images/icon_arrowright.png',
                        width: 24,
                        height: 24,
                        color: whiteColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
