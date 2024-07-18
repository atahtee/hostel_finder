import 'package:finderhostel/Route/AppRouteName.dart';
import 'package:finderhostel/Theme/app_color.dart';
import 'package:finderhostel/widgets/bacground_indicator.dart';
import 'package:finderhostel/widgets/background_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


import '../widgets/background_wording.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController();
  final SelectedPageNotifier = ValueNotifier(0);
  final backgrounds = [
    "assets/images/started-1.png",
    "assets/images/started-3.png",
    "assets/images/started-2.png",
    "assets/images/started-4.jpg",
  ];
  final titles = [
    "EASILY GET HOSTELS AROUND YOU",
    "QUALITY HOSTELS ARE OUR TEA AND BUTTER",
    "WE HELP YOU GET GOOD HOSTELS",
    "WHAT ELSE WOULD YOU NEED??",
  ];
  final description = [
    "Easily find affordable hostels with Hostel Finder."
    "Hostel finder enables you to find your next hostel easily and conveniently",
    "Hostel finder is a complete mobile application that helps you to find your next hostel easily",
    "Hostel finder is a complete mobile application that helps you to find your next hostel easily"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: PageView.builder(
            controller: controller,
            physics: NeverScrollableScrollPhysics(),
            itemCount: backgrounds.length,
            itemBuilder: ((context, index) {
              return BackgroundImage(
                asset: backgrounds[index],
              );
            }),
            onPageChanged: (index) {
              SelectedPageNotifier.value = index;
            },
          )),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                  child: ValueListenableBuilder<int>(
                valueListenable: SelectedPageNotifier,
                builder: (context, value, child) {
                  return BackgroundWording(
                    key: UniqueKey(),
                    title: titles[value],
                    description: description[value],
                    duration: const Duration(milliseconds: 2000),
                  );
                },
              )),
              InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(context, AppRouteName.home);
                },
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.fromLTRB(98, 0, 98, 16),
                  padding: EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColor.primaryColor),
                  alignment: Alignment.center,
                  child: Text(
                    'CHECK IT OUT',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: AppColor.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: ValueListenableBuilder<int>(
                  valueListenable: SelectedPageNotifier,
                  builder: (context, value, _) {
                    return BackgroundIndicator(
                      key: UniqueKey(),
                      selectedIndex: value,
                      itemCount: backgrounds.length,
                      duration: const Duration(milliseconds: 2000),
                      onPageChange: (value) {
                        controller.animateToPage(value,
                            duration: const Duration(milliseconds: 2000),
                            curve: Curves.ease);
                      },
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
