import 'package:flutter/material.dart';
import 'package:focal_x/Screen/ui/home_screen.dart';

// ignore: must_be_immutable
class LeadingComp extends StatelessWidget implements PreferredSizeWidget {
   bool app=true;

   LeadingComp({Key? key, required this.app}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: app ?
      Container(
        decoration: BoxDecoration( 
          color: Color.fromARGB(255, 236, 234, 226),
          borderRadius: BorderRadius.circular(7),
        ),
        width: 21,
        height: 21,
        margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: IconButton(
          icon: const Icon(Icons.arrow_back_ios,color: Color(0xffff8500)),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
        ),
      ):null,
      title:app?
       const Text(
        'Detail course',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Color(0xff303030),
        ),
      ):null,
      centerTitle: true, 
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          child: Image.asset(
            'assests/mmmm.png',
            width: 24,
            height: 24,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}