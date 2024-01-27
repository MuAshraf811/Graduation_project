import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/core/constants/colors.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 55,
        automaticallyImplyLeading: false,
        title: TextFormField(
          autocorrect: true,
          decoration: const InputDecoration(
            labelText: 'Search ',
            labelStyle: TextStyle(
              color: Colors.grey,
            ),
            prefixIcon: Icon(
              Icons.search_rounded,
              color: Colors.grey,
            ),
            constraints: BoxConstraints(
              maxHeight: 44,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
          ),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 12),
              child: InkWell(
                onTap: () {},
                child: const ImageIcon(
                  size: 35,
                  color: ConstantColors.appMainColor,
                  AssetImage(
                    'images/other/chat_icon.png',
                  ),
                ),
              )),
        ],
      ),
      body: Column(children: [
        const SizedBox(height: 48),
        CarouselSlider(
          options: CarouselOptions(
            height: 150.0,
            initialPage: 0,
            pauseAutoPlayOnManualNavigate: true,
            enableInfiniteScroll: true,
            reverse: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 2),
            autoPlayAnimationDuration: const Duration(milliseconds: 400),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.25,
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: 310,
                  height: 180,
                  decoration:
                      const BoxDecoration(color: ConstantColors.appMainColor),
                );
              },
            );
          }).toList(),
        ),
      ]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 9, right: 9),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: ConstantColors.appMainColor,
              width: 2,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 2,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag),
                label: 'cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
