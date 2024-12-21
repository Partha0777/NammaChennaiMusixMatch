import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:namma_chennai/Utility/utility.dart';
import 'package:namma_chennai/View/login_page.dart';

class ConnectMusicPage extends StatelessWidget {
  const ConnectMusicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 150,
            ),
            const Text(
              'Connect your music',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              'Choose your favorite music source and get the most out of Musixmatch',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            CustomButton(
                icon: Icons.music_note,
                text: 'Spotify',
                backgroundColor: Utility.hexToColor("#65D46E"),
                textColor: Colors.white,
                onPressed: () {}),
            const SizedBox(height: 15),
            CustomButton(
                icon: Icons.music_note,
                text: 'Apple Music',
                backgroundColor: Utility.hexToColor("#EA3353"),
                textColor: Colors.white,
                onPressed: () {}),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                print('I will do it later tapped');
              },
              child: const Text(
                'I will do it later',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMusicButton({
    required String label,
    required IconData icon,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: Colors.white,
      ),
      label: Text(
        label,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: const Size.fromHeight(50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
