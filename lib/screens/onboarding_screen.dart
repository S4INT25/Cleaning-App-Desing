import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_cleaning/Theme/colors.dart';
import 'package:house_cleaning/screens/home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  static const routeName = 'OnboardingScreen';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/logo.svg',
                    width: 30,
                    height: 25,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Nimbl',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Clean Home ',
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                'Clean Life.',
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Book Cleaners at the Comfort of you home',
                maxLines: 2,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(
                'of you home',
                maxLines: 2,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Container(
                  child: Image.asset(
                'assets/images/background.png',
                height: size.height * 0.5,
                width: size.width,
                fit: BoxFit.cover,
              )),
              SizedBox(
                height: 20,
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
                  child: FlatButton(
                    color: headingColor,
                    textColor: primaryColor,
                    child: Text('Get started'),
                    onPressed: () {
                      Navigator.of(context)
                          .popAndPushNamed(HomeScreen.routeName);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
