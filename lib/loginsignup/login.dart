import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: LoginPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Giant Circle with Image
          ClipPath(
            clipper: CircleClipper(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              color: Colors.blueAccent,
              child: Center(
                child: Image.asset(
                  'assets/Image.png', // Ensure image exists
                  width: 150,
                  height: 150,
                ),
              ),
            ),
          ),

          const SizedBox(height: 30),

          // Gmail TextField
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Gmail',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ),

          const SizedBox(height: 30),

          // Password TextField
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
          ),

          const SizedBox(height: 30),

          // Next Button
          ElevatedButton(
            onPressed: () {
              // Handle login
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text(
              'Next',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}

// CircleClipper placed correctly outside LoginPage
class CircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.addOval(Rect.fromCircle(
      center: Offset(size.width / 2, size.height),
      radius: size.height,
    ));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
