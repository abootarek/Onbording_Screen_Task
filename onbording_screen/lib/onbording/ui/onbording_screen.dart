// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class OnboardingScreen extends StatelessWidget {
//   OnboardingScreen({
//     super.key,
//   });
//   final PageController _controller = PageController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(
//             vertical: 100,
//             horizontal: 50,
//           ),
//           child: Stack(
//             children: [
//               PageView(
//                 controller: _controller,
//                 children: [
//                   Container(
//                     child: Column(
//                       children: [
//                         Image.asset('assets/images/onbording_screen2.jpg'),
//                         SizedBox(
//                           height: 75,
//                         ),
//                         Text(
//                           'Listen Anywhere',
//                           style: TextStyle(
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                           'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.grey,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     child: Column(
//                       children: [
//                         Image.asset('assets/images/onbording_screen1.jpg'),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     child: Column(
//                       children: [
//                         Image.asset('assets/images/onbording_screen3.jpg'),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               Positioned(
//                 bottom: 50,
//                 left: 0,
//                 right: 0,
//                 child: Center(
//                   child: SmoothPageIndicator(
//                     controller: _controller,
//                     count: 3,
//                     effect: WormEffect(
//                       activeDotColor: Colors.green,
//                       dotHeight: 10,
//                       dotWidth: 10,
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 bottom:2,
//                 left: 0,
//                 right: 0,
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   child: Text('data'),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:onbording_screen/onbording/ui/widget/buidpage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Stack(
            children: [
              PageView(
                controller: _controller,
                children: [
                  buildPage(
                    imagePath: 'assets/images/onbording_screen2.jpg',
                    title: 'Listen Anywhere',
                    description:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
                  ),
                  buildPage(
                    imagePath: 'assets/images/onbording_screen1.jpg',
                    title: 'PlayBack',
                    description:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
                  ),
                  buildPage(
                    imagePath: 'assets/images/onbording_screen3.jpg',
                    title: 'Music For You',
                    description:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
                  ),
                ],
              ),
              Positioned(
                bottom: 100,
                left: 0,
                right: 0,
                child: Center(
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: WormEffect(
                      activeDotColor: Colors.green,
                      dotHeight: 10,
                      dotWidth: 10,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 20, // Position button 20 pixels from the bottom
                left: 0,
                right: 0,
                child: MaterialButton(
                  color: const Color.fromARGB(255, 140, 212, 142),
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Containue',
                    style: TextStyle(color: Colors.white),
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
