import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils/app_style.dart';
import '../../../utils/size_config.dart';

class CourseListItem extends StatefulWidget {
  final int index;

  const CourseListItem({super.key,
    required this.index
  });
  @override
  State<CourseListItem> createState() => _CourseListItemState();
}

class _CourseListItemState extends State<CourseListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      width: 255,
      margin: EdgeInsets.only(
        left: kPadding20,
        right: widget.index == 5 - 1 ? kPadding20 : 0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          kBorderRadius20,
        ),
        boxShadow: [
          BoxShadow(
            spreadRadius: 0,
            offset: const Offset(0, 18),
            blurRadius: 18,
            color: kBlack.withOpacity(0.1),
          )
        ],
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/basic_background"),
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 136,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft:
                  Radius.circular(kBorderRadius20),
                  bottomRight:
                  Radius.circular(kBorderRadius20),
                ),
                gradient: kLinearGradientBlack,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kPadding16,
                vertical: kPadding20,
              ),
              child: Column(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            kBorderRadius20,
                          ),
                          color: kLightOrange
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: kPadding8,
                          vertical: kPadding4,
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: kPadding4,
                            ),
                            Text(
                              'Free e-book',
                              style: kRalewayRegular.copyWith(
                                color: kWhite,
                                fontSize: SizeConfig
                                    .blockSizeHorizontal! *
                                    2.5,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Step design sprint for beginner',
                        style: kRalewayMedium.copyWith(
                          color: kWhite,
                          fontSize: SizeConfig
                              .blockSizeHorizontal! *
                              4,
                        ),
                      ),
                      SizedBox(
                        height:
                        SizeConfig.blockSizeVertical! *
                            0.5,
                      ),
                      Row(
                        children: [
                          //add icon
                          SizedBox(
                            width:
                            kPadding8,
                          ),
                          Text(
                            '5h 21m',
                            style: kRalewayRegular.copyWith(
                              color: kGrey8C,
                              fontSize: SizeConfig
                                  .blockSizeHorizontal! *
                                  2.5,
                            ),
                          )
                        ],
                      ),

                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

}