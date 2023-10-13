import 'package:flutter/material.dart';

class Timebutton extends StatefulWidget {
  final String text;
  final bool avi;

  const Timebutton({Key? key, required this.text, required this.avi})
      : super(key: key);

  @override
  _TimebuttonState createState() => _TimebuttonState();
}

class _TimebuttonState extends State<Timebutton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.avi) {
          setState(() {
            isPressed = !isPressed;
          });
        }
      },
      child: Container(
        height: 37,
        width: 86,
        decoration: BoxDecoration(
          border: Border.all(
            color: widget.avi ? isPressed?  Colors.white: const Color(0xffff8500): const Color(0xffC7C9D9),
          ),
          color: isPressed && widget.avi ? Color(0xffff8500) : widget.avi
              ? const Color.fromARGB(255, 255, 255, 255)
              : const Color(0xffEEEEEE),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: isPressed && widget.avi ? Colors.white : widget.avi
                  ? const Color(0xffff8500)
                  : const Color(0xffC7C9D9),
            ),
          ),
        ),
      ),
    );
  }
}