import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBordingScreen extends StatelessWidget {
  OnBordingScreen({super.key});
  final PageController controller = PageController();
  static const List<String> images = [
    'images/on_boarding/prescription.png',
    'images/on_boarding/Ai_aid.png',
    'images/on_boarding/doctors.png'
  ];
  static const List<String> title = [
    'Get your prescriptions',
    'Ai aid with you',
    'Chat with doctors'
  ];
  static const List<String> description = [
    'You can search and easily choose the prescription, you can also use a map to explore and find nearby pharmacies',
    'Features like suggestions and GPT powered chats to ask for advice and questions',
    'Chat with doctors and get advice from them around the clock. You can revise and check you medicines.'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.teal,
                  Colors.teal,
                ])),
          ),
          Positioned(
            top: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: SizedBox(
                height: 450,
                width: MediaQuery.sizeOf(context).width,
                child: PageView.builder(
                  controller: controller,
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 420,
                          height: 250,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                images[index],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          title[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          description[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 75,
            left: 32,
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              axisDirection: Axis.horizontal,
              effect: const WormEffect(
                activeDotColor: Colors.white,
                dotColor: Colors.white60,
                dotWidth: 14,
                dotHeight: 6,
                type: WormType.thin,
              ),
            ),
          ),
          Positioned(
            bottom: 70,
            right: 20,
            child: Container(
              width: 64,
              height: 32,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(24),
                ),
              ),
              child: const Center(
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 48,
            right: 20,
            child: Container(
              width: 64,
              height: 32,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white60,
                  width: 1.5,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(24),
                ),
              ),
              child: const Center(
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
