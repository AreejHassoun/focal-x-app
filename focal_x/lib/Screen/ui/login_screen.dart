import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:focal_x/Screen/ui/home_screen.dart';
import 'package:focal_x/Screen/ui/signup_screen.dart';
import 'package:focal_x/Screen/ui/welcome_screen.dart';

import '../widgets/WidgetEmail.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = "";
  String password = "";
  bool passwordVisibile = true;
  bool saveAccount = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();
  bool processing = false;

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: _scaffoldKey,
      child: Scaffold(
        primary: true,
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.04,
                vertical: MediaQuery.of(context).size.height * 0.01),
            child: Center(
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Image.asset('assets/login.png'),
                      ),
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          WidgetEmail(),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical:
                                    MediaQuery.of(context).size.height * 0.01),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Password isEmpty';
                                } else if (value.length < 6) {
                                  return 'Password < 6';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                setState(() {
                                  password = value!;
                                });
                              },
                              obscureText: passwordVisibile,
                              decoration: textFormDecoration.copyWith(
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          passwordVisibile = !passwordVisibile;
                                        });
                                      },
                                      icon: Icon(
                                        passwordVisibile
                                            ? Icons.visibility_off_outlined
                                            : Icons.visibility_outlined,
                                        color: Colors.grey,
                                      )),
                                  // labelText: 'Password',
                                  hintText: 'Password'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical:
                                    MediaQuery.of(context).size.height * 0.02),
                            child: MaterialButton(
                              minWidth: MediaQuery.of(context).size.width,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();

                                  if (kDebugMode) {
                                    print(
                                        "Email is : $email \n Password is $password ");
                                  }
                                }
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeScreen()));
                              },
                              color: Color(0xffFF8500),
                              padding: EdgeInsets.symmetric(
                                  vertical: MediaQuery.of(context).size.height *
                                      0.025,
                                  horizontal: 25),
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical:
                                      MediaQuery.of(context).size.height * 0.01,
                                  horizontal: 0),
                              child: Flexible(
                                flex: 3,
                                child: Container(
                                  child: FittedBox(
                                    child: TextButton(
                                      onPressed: () {},
                                      child: const Text("Forget password ?"),
                                    ),
                                  ),
                                ),
                              )),
                          Stack(alignment: Alignment.center, children: [
                            Divider(),
                            Container(
                              child: Divider(
                                height: 1,
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "or",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                            vertical:
                                MediaQuery.of(context).size.height * 0.01),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: MaterialButton(
                            minWidth: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(
                                vertical:
                                    MediaQuery.of(context).size.height * 0.025),
                            height: MediaQuery.of(context).size.height * 0.01,
                            color: Color(0xff0082CD),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: () {},
                            child: const FittedBox(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.facebook_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(" Login with Facebook",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20)),
                                ],
                              ),
                            ),
                          ),
                        )),
                    Padding(
                        padding: EdgeInsets.symmetric(
                            vertical:
                                MediaQuery.of(context).size.height * 0.01),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: MaterialButton(
                            minWidth: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(
                                vertical:
                                    MediaQuery.of(context).size.height * 0.025),
                            height: MediaQuery.of(context).size.height * 0.01,
                            color: Colors.grey.shade100,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: () {},
                            child: FittedBox(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'icons/google.png',
                                    height: 20,
                                  ),
                                  //Icon(Icons.),
                                  const Text(" Login with Google",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20)),
                                ],
                              ),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            child: FittedBox(
                              child: Text("Don't have an account ?",
                                  style: TextStyle(
                                    color: Colors.grey.shade500,
                                  )),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: FittedBox(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SignupScreen()));
                                });
                              },
                              child: const Text("SignUp"),
                            ),
                          ),
                        )
                      ],
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

var textFormDecoration = InputDecoration(
  floatingLabelAlignment: FloatingLabelAlignment.start,
  filled: true,
  fillColor: Colors.grey.shade200,
  counterStyle: const TextStyle(fontSize: 15),
  contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
  // labelText: 'Full Name',
  // hintText: 'Enter your full name',
  floatingLabelBehavior: FloatingLabelBehavior.auto,
  hintStyle:
      TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w600),
  // labelStyle: const TextStyle(
  //   color: Colors.lightBlueAccent,
  // ),
  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 0),
      borderRadius: BorderRadius.circular(10)),
  hoverColor: Colors.grey.shade400,
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 0),
      borderRadius: BorderRadius.circular(10)),
);

//extension EmailValidator on String {
bool isValidEmail(String email) {
  final RegExp emailRegex = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
  return emailRegex.hasMatch(email);
}
//}
