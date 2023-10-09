import 'package:flutter/cupertino.dart';
import '../../../utils/app_style.dart';
import '../../../utils/size_config.dart';

class CourceItem extends StatefulWidget {
  final int index;
  final current ;
  final List<String> categories;

  const CourceItem({super.key,
    required this.index,
    required this.current,
    required this.categories
  });
  @override
  State<CourceItem> createState() => _CourceItemState();
}

class _CourceItemState extends State<CourceItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left:  widget.index == 0 ? kPadding20 : 12,
        right:
        widget.index ==  widget.categories.length - 1 ? kPadding20 : 0,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: kPadding16,
      ),
      height: 37,
      decoration: BoxDecoration(
        color:widget.current ==  widget.index
        ? kOrange: kGreyFA ,
        borderRadius: BorderRadius.circular(
          kBorderRadius7,
        ),
      ),
      child: Center(
        child: Text(
          widget.categories[ widget.index],
          style: kRalewayMedium.copyWith(
            color: widget.current ==  widget.index ? kWhite : kGrey85,
            fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
          ),
        ),
      ),
    );
  }

}