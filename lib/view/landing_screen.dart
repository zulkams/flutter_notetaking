import 'package:flutter/material.dart';
import 'package:flutter_notetaking/constant.dart';
import 'package:flutter_notetaking/widget/appButton_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              RichText(
                text: TextSpan(
                  text: 'Welcome to ',
                  style: GoogleFonts.asap(
                    textStyle: TextStyle(
                        fontSize: 24,
                        color: mainColor,
                        letterSpacing: .5,
                        fontWeight: FontWeight.w500),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'TakeNotez',
                      style: GoogleFonts.asap(
                        textStyle: TextStyle(
                            fontSize: 26,
                            color: mainColor,
                            letterSpacing: .5,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Keep your day organized',
                style: GoogleFonts.asap(
                  textStyle: const TextStyle(
                      color: Colors.grey,
                      letterSpacing: .5,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const Spacer(),
              SvgPicture.asset(
                'assets/images/noteTaking.svg',
                height: MediaQuery.of(context).size.height * 0.20,
              ),
              const Spacer(),
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.7)),
                  ),
                  hintText: 'Email',
                  hintStyle: GoogleFonts.asap(
                    textStyle: TextStyle(
                        fontSize: 17, color: Colors.grey.withOpacity(0.9)),
                  ),
                  fillColor: Colors.white,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: mainColor, width: 1),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                obscuringCharacter: '•',
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: GoogleFonts.asap(
                    textStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.withOpacity(0.9),
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.7)),
                  ),
                  fillColor: Colors.white,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: mainColor, width: 1),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              AppButton(
                  backgroundColor: mainColor,
                  textColor: Colors.white,
                  text: 'Sign In'),
              const SizedBox(height: 20),
              Row(children: <Widget>[
                const Expanded(
                    child: Divider(
                  endIndent: 15,
                  thickness: 2,
                )),
                Text(
                  "Or",
                  style: GoogleFonts.asap(
                    textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey),
                  ),
                ),
                const Expanded(
                    child: Divider(
                  indent: 15,
                  thickness: 2,
                )),
              ]),
              const SizedBox(height: 20),
              AppButton(
                  backgroundColor: Colors.white,
                  textColor: mainColor,
                  text: 'Sign Up'),
              const Spacer(),
            ],
          ),
        ),
      )),
    );
  }
}
