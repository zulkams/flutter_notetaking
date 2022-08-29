import 'package:flutter/material.dart';
import 'package:flutter_notetaking/constant.dart';
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
              Spacer(),
              RichText(
                text: TextSpan(
                  text: 'Welcome to ',
                  style: GoogleFonts.asap(
                    textStyle: TextStyle(
                        fontSize: 24,
                        color: mainColor,
                        fontWeight: FontWeight.w500),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'TakeNotez',
                      style: GoogleFonts.asap(
                        textStyle: TextStyle(
                            fontSize: 26,
                            color: mainColor,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
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
              Spacer(),
              SvgPicture.asset(
                'assets/images/noteTaking.svg',
                height: MediaQuery.of(context).size.height * 0.20,
              ),
              Spacer(),
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
              SizedBox(height: 20),
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
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: mainColor,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                    minimumSize: const Size.fromHeight(10)),
                child: Text(
                  'Sign In',
                  style: GoogleFonts.asap(
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(height: 20),
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
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                    minimumSize: const Size.fromHeight(10)),
                child: Text(
                  'Sign Up',
                  style: GoogleFonts.asap(
                    textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: mainColor),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      )),
    );
  }
}
