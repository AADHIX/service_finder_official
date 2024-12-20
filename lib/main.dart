import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Services',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFA9A9A9), // Light grey to match edge images color
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100),
            HeaderSection(), // Top Header Section
            SizedBox(height: 50),
            EdgeImagesSection(), // Left and Right Edge Images
            SizedBox(height: 50),
            AboutUsSection(), // About Us Section with Features
            FooterLogos(), // Footer Logos
          ],
        ),
      ),
    );
  }
}

// ---------------------- HEADER SECTION -----------------------
class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Find professional\nservices in your area',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(height: 10),
        const Text(
          'Autospace is one of the most finest group of\ncollaborative services you wish for',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, color: Colors.amber),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/google_play.png', height: 20),
            const SizedBox(width: 10),
            Image.asset('assets/app_store.png', height: 40),
          ],
        ),
      ],
    );
  }
}

// ---------------------- EDGE IMAGES SECTION -----------------------
class EdgeImagesSection extends StatelessWidget {
  const EdgeImagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Left Image Container
        Container(
          height: 200,
          width: 250,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/left.png'),
              fit: BoxFit.contain, // Ensure the image fits within the container
            ),
          ),
        ),
        // Right Image Container
        Container(
          height: 390,
          width: 360,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/right.png'),
              fit: BoxFit.contain, // Ensure the image fits within the container
            ),
          ),
        ),
      ],
    );
  }
}

// ---------------------- ABOUT US SECTION -----------------------
class AboutUsSection extends StatelessWidget {
  const AboutUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'About us',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // Repositioned Text: Adjusted with padding and alignment
              Align(
                alignment: Alignment.centerLeft, // Align text to center-left
                child: Container(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: const Text(
                    'We connect with reliable \n and skilled professionals\n'
                        'offering on-demand \n services in your local area. \n'
                        'Trusted expertise who \n get the job done quickly.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.start, // Adjust text alignment
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
        // Add 2app.png image in the center, extending outside the container
        Positioned(
          top: -300, // Adjust the top position as needed
          left: 0,
          right: 0,
          child: Center(
            child: Container(
              height: 405, // Adjust this value for the desired height
              width: 200,  // Adjust this value for the desired width
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
                image: const DecorationImage(
                  image: AssetImage('assets/2app.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// ------------------------ FOOTER LOGOS ------------------------
class FooterLogos extends StatelessWidget {
  const FooterLogos({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('assets/hyndai.png', height: 50),
          Image.asset('assets/tvss.png', height: 50),
          Image.asset('assets/siemenss.png', height: 30),
          Image.asset('assets/toyota.png', height: 20),
          Image.asset('assets/ford.png', height: 50),
        ],
      ),
    );
  }
}

