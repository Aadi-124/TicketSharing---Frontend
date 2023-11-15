
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Page1 extends StatelessWidget{
  
  const Page1({super.key});
  
  
  @override
  Widget build(BuildContext context){


    return Scaffold(
      appBar:AppBar(
        title:const Text('Login Page'),
      ),
      body: ListView(
          children: [
            CarouselSlider(
              items: [
                Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      image: NetworkImage("lib/images/img1.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      image: NetworkImage("lib/images/img2.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin:const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      image: NetworkImage("lib/images/img3.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            
              options: CarouselOptions(
                height: 380.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
          ]),
          );
  }

}






// class CarouselSliderExample extends StatelessWidget {

//   const CarouselSliderExample({super.key, required this.title});

  

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//           children: [
//             CarouselSlider(
//               items: [
//                 Container(
//                   margin: EdgeInsets.all(8.0),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10.0),
//                     image: DecorationImage(
//                       image: NetworkImage("lib/IMG1.png"),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(8.0),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10.0),
//                     image: DecorationImage(
//                       image: NetworkImage("lib/IMG2.png"),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(8.0),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10.0),
//                     image: DecorationImage(
//                       image: NetworkImage("lib/l1.png"),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ],
//               options: CarouselOptions(
//                 height: 380.0,
//                 enlargeCenterPage: true,
//                 autoPlay: true,
//                 aspectRatio: 16 / 9,
//                 autoPlayCurve: Curves.fastOutSlowIn,
//                 enableInfiniteScroll: true,
//                 autoPlayAnimationDuration: Duration(milliseconds: 800),
//                 viewportFraction: 0.8,
//               ),
//             ),
//           ]),
//     );
//   }
// }











