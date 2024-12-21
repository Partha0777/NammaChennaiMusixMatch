import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:namma_chennai/Utility/Constants.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.appBgcolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
            ),
            Center(
              child: Image.asset(
                "assets/images/logo.png",
                height: 60,
                width: 60,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const Text(
              'Get started!',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 15),
            const Text(
              'Join our amazing Namma Flutter community of music lovers',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 120,
            ),
            CustomButton(
              icon: Icons.g_mobiledata,
              text: 'Continue with Google',
              backgroundColor: Colors.grey.shade800,
              textColor: Colors.white,
              onPressed: () {
                print("Google Login");
              },
            ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.facebook,
              text: 'Continue with Facebook',
              backgroundColor: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                print("Facebook Login");
              },
            ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.apple,
              text: 'Continue with Apple',
              backgroundColor: Colors.black,
              textColor: Colors.white,
              onPressed: () {
                print("Apple Login");
              },
            ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.email,
              text: 'Continue with email',
              backgroundColor: Colors.grey.shade800,
              textColor: Colors.white,
              onPressed: () {
                print("Email Login");
              },
            ),
            const SizedBox(height: 60),
            const Text(
              'Are you an artist?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            InkWell(
                onTap: () {
                  print('Go to Musixmatch Pro');
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Go to Musixmatch Pro',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.open_in_new,
                      color: Colors.white,
                      size: 18,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: textColor),
      label: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 16,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: const Size.fromHeight(50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
