import 'package:flutter/material.dart';
import 'package:flutter_login_signup_page/Screens/Signup/components/background.dart';
import 'package:flutter_login_signup_page/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Login/components/body.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "SIGN UP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            "assets/icons/signup.svg",
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
                  "SIGNUP",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          AlreadyHaveAnAccountCheck(login: false),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocialIcon(iconSrc: "assets/icons/facebook.svg"),
              SocialIcon(iconSrc: "assets/icons/twitter.svg"),
              SocialIcon(iconSrc: "assets/icons/google-plus.svg"),
            ],
          ),
        ],
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  const SocialIcon({this.iconSrc = "assets/icons/facebook.svg"});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryLightColor,
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSrc,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(children: <Widget>[
        Expanded(
          child: Divider(
            color: Color(0xFFD9D9D9),
            height: 1.5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "OR",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: Color(0xFFD9D9D9),
            height: 1.5,
          ),
        ),
      ]),
    );
  }
}
