import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/constants/colors.dart';
import 'package:graduation_project/features/home/blocs/cubit/navigation_cubit.dart';
import 'package:graduation_project/features/home/widgets/app_bar_search.dart';
import 'package:graduation_project/features/home/widgets/carousel_slider.dart';
import 'package:graduation_project/features/home/widgets/chat_icon.dart';
import 'package:graduation_project/features/settings/presentaion/settings_view.dart';
import '../../cart/presentation/cart_view.dart';
import '../../search/presentation/search_view.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});
  final _routersInNav = const [
    HomeScreen(),
    SearchView(),
    CartView(),
    SettingsView()
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return Scaffold(
            appBar: BlocProvider.of<NavigationCubit>(context).index == 0
                ? AppBar(
                    toolbarHeight: 55,
                    automaticallyImplyLeading: false,
                    title: const CutomAppBarSearch(),
                    actions: const [
                      ClickableChatIcon(),
                    ],
                  )
                : null,
            body: _routersInNav[BlocProvider.of<NavigationCubit>(context).index],
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
                  currentIndex: BlocProvider.of<NavigationCubit>(context).index,
                  onTap: (int target) {
                    BlocProvider.of<NavigationCubit>(context)
                        .changeIndex(target);
                  },
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
            ));
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 48),
        CarouselSliderWidget(),
      ],
    );
  }
}
