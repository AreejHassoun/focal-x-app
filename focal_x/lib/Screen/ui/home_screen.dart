import 'package:flutter/material.dart';
import 'package:focal_x/Screen/ui/details_screen.dart';
import '../../utils/app_style.dart';
import '../../utils/size_config.dart';

import '../widgets/sliderItemes/cource_item.dart';
import '../widgets/sliderItemes/course_list_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> categories = [
    "ALL",
    "UI/UX",
    "Illustratur",
    "3D Max"
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
            const SizedBox(
              height: kPadding24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kPadding20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming course of this week',
                    style: kRalewayMedium.copyWith(
                      color: kBlack,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  ),
                ],
              ),
            ),
              const SizedBox(
                height: kPadding24,
              ),
              SizedBox(
                width: double.infinity,
                height: 34,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          current = index;
                        });
                      },
                      child: CourceItem(index: index,current: current,categories:categories ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: kPadding24,
              ),
              SizedBox(
                height: 272,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (() => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailsScreen(),
                        ),
                      )),
                      child: CourseListItem(index: index)
                    );
                  },
                ),
              ),
              const SizedBox(
                height: kPadding24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}