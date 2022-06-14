import 'package:flutter/material.dart';
import 'package:flutter_login_signup_page/Screens/Login/components/background.dart';
import 'package:flutter_login_signup_page/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.35,
          ),
          TextFieldContainer(
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.person, color: kPrimaryColor),
                hintText: "Your Email",
                border: InputBorder.none,
              ),
            ),
          ),
          TextFieldContainer(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock, color: kPrimaryColor),
                suffixIcon: Icon(Icons.visibility, color: kPrimaryColor),
                hintText: "Password",
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: size.width * 0.8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(29),
              child: ElevatedButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  // primary: kPrimaryColor,
                  backgroundColor: kPrimaryColor,
                ),
                onPressed: () {},
                child: Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          AlreadyHaveAnAccountCheck(),
        ],
      ),
    );
  }
}

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an Accoun ?" : "Already have an Account",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            login ? "Sign UP" : "Sign In",
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
