import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../ui/details_screen.dart';
import '../../ui/home_screen.dart';
import '../../ui/login_screen.dart';
import '../../ui/messages_screen.dart';
import 'custom_bottom_nav_bar_dash.dart';
import 'cubit/navbar_cubit.dart';
class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedPage = 0;
  final pages = [HomeScreen(), DetailsScreen(), MessagesScreen(),LoginScreen()];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavbarCubit(),
      child: BlocConsumer<NavbarCubit, NavbarState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = NavbarCubit.get(context);

          return Scaffold(
            bottomNavigationBar: CustomBottomNavBarDash(
              onChange: (index) {
                cubit.changeBottomNavBar(index);
                selectedPage = index;
              },
              defaultSelectedIndex: 0,
              backgroundColor: Colors.grey.shade100,
              radius: 25,
              showLabel: false,
              textList: [
                '',
                '',
                '',
                '',
              ],
              iconList: [
                Icons.home_outlined,
                Icons.camera,
                Icons.mail_outline,
                Icons.person_outline,
              ],
            ),
            extendBody: true,
            body:pages[selectedPage],
          );
        },
      ),
    );
  }
}