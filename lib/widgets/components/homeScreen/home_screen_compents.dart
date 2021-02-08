import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_cleaning/Theme/colors.dart';

class HomeComponents {
  static Widget cleaningTypeBuilder(
      BuildContext context, String title, String img, bool isCompleted) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 10,
            left: 20,
            right: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: lightPrimaryColor,
          ),
          height: size.height * 0.14,
          width: size.width * 0.4,
          child: Image.asset(
            img,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Initial Cleaning',
          style: Theme.of(context)
              .textTheme
              .headline4
              .copyWith(color: Colors.black, fontSize: 14),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 25,
          height: 25,
          child: CircleAvatar(
            backgroundColor: isCompleted ? accentColor : Colors.grey[200],
            child: isCompleted
                ? Icon(
                    Icons.check,
                    color: headingColor,
                  )
                : null,
          ),
        )
      ],
    );
  }

  static Widget subTitleBuilder(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headline4
            .copyWith(color: Colors.black, fontSize: 14),
      ),
    );
  }

  static Widget dateBuilder(BuildContext context, bool isSelected, String day) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 50,
        width: size.width / 4,
        decoration: BoxDecoration(
            border: Border.all(width: isSelected ? 0 : 1),
            borderRadius: BorderRadius.circular(5.0),
            color: isSelected ? accentColor : headingColor),
        child: Center(
            child: Text(
          day,
          style: TextStyle(color: isSelected ? headingColor : null),
        )),
      ),
    );
  }

  static Widget extrasBuilder(String image, int counter, bool hasCounter) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        children: [
          CircleAvatar(
            backgroundColor: primaryColor,
            minRadius: 20,
            maxRadius: 30,
            child: Image.asset(
              image,
              fit: BoxFit.contain,
              height: 30,
              width: 30,
            ),
          ),
          if (hasCounter)
            Positioned(
                right: 0,
                child: CircleAvatar(
                  maxRadius: 10,
                  child: Text(
                    '$counter',
                    style: TextStyle(color: headingColor),
                  ),
                  backgroundColor: accentColor,
                ))
        ],
      ),
    );
  }

  static Widget drawerSectionsBuilder(BuildContext context, String title,
      String img, List<Map<String, String>> data) {
    final size = MediaQuery.of(context).size;
    return Container(
        color: headingColor,
        height: size.height * 0.33,
        width: double.infinity,
        child: Column(
          children: [
            ...data.map((e) {
              return Column(
                children: [
                  ListTile(
                    leading: SvgPicture.asset(
                      e.values.first,
                      height: 30,
                      width: 30,
                    ),
                    title: Text(
                      e.keys.first,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                  Divider(
                    height: 1,
                  )
                ],
              );
            }).toList(),
          ],
        ));
  }

  static List<Map<String, String>> section1 = [
    {'Notifications': 'assets/images/Group 3614.svg'},
    {'My Bookings': 'assets/images/calendar-4.svg'},
    {'My Plan': 'assets/images/tick-2.svg'},
    {'Addresses': 'assets/images/address.svg'},
  ];

  static List<Map<String, String>> section2 = [
    {'Facebook': 'assets/images/facebook.svg'},
    {'Twitter': 'assets/images/twitter.svg'},
    {'Gmail': 'assets/images/gmail.svg'},
  ];
}
