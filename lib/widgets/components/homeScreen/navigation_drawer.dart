import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_cleaning/Theme/colors.dart';
import 'package:house_cleaning/utils/extentions.dart';
import 'package:house_cleaning/widgets/components/homeScreen/home_screen_compents.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Drawer(
      child: Container(
        height: size.height,
        color: primaryColor,
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset(
                    'assets/images/profile.svg',
                    height: 50,
                    width: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi kate',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Text(
                        'Welcome back',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      SizedBox(height: 10),
                      Text(
                        '${70}% Completed',
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            .copyWith(color: accentColor, fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Container(
                height: size.height * 0.8,
                decoration: BoxDecoration(
                    color: HexColor.fromHex('#FAFAFA'),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomeComponents.subTitleBuilder(context, 'Account'),
                    HomeComponents.drawerSectionsBuilder(
                        context, "hello", "nice", HomeComponents.section1),
                    HomeComponents.subTitleBuilder(context, 'Share'),
                    HomeComponents.drawerSectionsBuilder(
                        context, "hello", "nice", HomeComponents.section2),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
