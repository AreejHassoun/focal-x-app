import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widgets/Widgetbutton.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool processing = false;

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeHeight = MediaQuery.of(context).size.height;
    return ScaffoldMessenger(
      child: Scaffold(
        primary: true,
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            padding: EdgeInsets.symmetric(
                horizontal: sizeWidth * 0.04, vertical: sizeHeight * 0.01),
            child: Center(
              child: SizedBox(
                width: sizeWidth * 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: sizeWidth * 0.4,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset('assets/image1.jpg'),
                      ),
                    ),
                    const Text('community',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 27,
                          color: Colors.black,
                          letterSpacing: 3.9,
                        )),
                    SizedBox(height: sizeHeight * 0.2),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: sizeHeight * 0.01,
                          ),
                          child: const Text(
                            'Welcome to Our Community',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 18.65,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: sizeWidth * 0.07,
                            ),
                            child: const Text(
                              'Best and popular apps for live education course from home',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 14.44,
                                color: Color(0xff8c8c8c),
                              ),
                            )),
                        WidgetButton(sizeHeight: sizeHeight),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/* class WidgetButton extends StatelessWidget {
  const WidgetButton({
    super.key,
    required this.sizeHeight,
  });

  final double sizeHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: sizeHeight * 0.02),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)),
        onPressed: () {
          //  setState(() {});
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                  builder: (context) =>
                      const LoginScreen()));
        },
        color: Color(0xffFF8500),
        padding: EdgeInsets.symmetric(
            vertical:
                MediaQuery.of(context).size.height * 0.025,
            horizontal: 25),
        child: const Text(
          "Get started",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20),
        ),
      ),
    );
  }
}
 */
extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this);
  }
}
