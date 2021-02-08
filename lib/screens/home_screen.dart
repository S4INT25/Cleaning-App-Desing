import 'package:flutter/material.dart';
import 'package:house_cleaning/Theme/colors.dart';
import 'package:house_cleaning/widgets/components/homeScreen/home_screen_compents.dart';
import 'package:house_cleaning/widgets/components/homeScreen/navigation_drawer.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: NavigationDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text(
                'Your Plan',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Spacer(),
            Container(
              width: size.width,
              height: size.height * 0.8,
              decoration: BoxDecoration(
                  color: headingColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeComponents.subTitleBuilder(context, 'Selected Cleaning'),
                  Expanded(
                    child: Row(
                      children: [
                        HomeComponents.cleaningTypeBuilder(
                            context,
                            "Initial Cleaning",
                            'assets/images/cleanin.png',
                            false),
                        HomeComponents.cleaningTypeBuilder(
                            context,
                            "Upkeep Cleaning",
                            'assets/images/upCleanin.png',
                            true)
                      ],
                    ),
                  ),
                  HomeComponents.subTitleBuilder(context, 'Selected Frequency'),
                  Row(
                    children: [
                      HomeComponents.dateBuilder(context, true, 'Weekly'),
                      HomeComponents.dateBuilder(context, false, 'Bi-weekly'),
                      HomeComponents.dateBuilder(context, false, 'Monthly')
                    ],
                  ),
                  HomeComponents.subTitleBuilder(context, 'Selected Extras'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HomeComponents.extrasBuilder(
                          'assets/images/4.png', 10, true),
                      HomeComponents.extrasBuilder(
                          'assets/images/2.png', 15, false),
                      HomeComponents.extrasBuilder(
                          'assets/images/3.png', 15, true),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HomeComponents.extrasBuilder(
                          'assets/images/1.png', 5, false),
                      HomeComponents.extrasBuilder(
                          'assets/images/2.png', 15, true),
                      HomeComponents.extrasBuilder(
                          'assets/images/3.png', 1, true),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
