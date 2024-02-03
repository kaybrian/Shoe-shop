import 'package:flutter/material.dart';
import 'package:shoeshop/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //  Logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'images/logo.png',
                  height: 240,
                ),
              ),

              const SizedBox(
                height: 20.0,
              ),

              const Text(
                "Stand Out",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 24.0,
              ),

              const Text(
                "Brand new sneakers and custom kicks made with high quality materials",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  width: double.infinity,
                  padding: const EdgeInsets.all(25.0),
                  margin: const EdgeInsets.symmetric(vertical: 25.0),
                  child: const Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
