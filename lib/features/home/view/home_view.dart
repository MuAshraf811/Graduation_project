import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/features/home/blocs/cubit/navigation_cubit.dart';
import 'package:graduation_project/features/home/widgets/app_bar_search.dart';
import 'package:graduation_project/features/home/widgets/carousel_slider.dart';
import 'package:graduation_project/features/home/widgets/chat_icon.dart';
import 'package:graduation_project/features/settings/presentaion/settings_view.dart';
import '../../cart/presentation/cart_view.dart';
import '../../search/presentation/search_view.dart';
import '../widgets/bottom_nav_bar.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});
  //this list contains all screens that navigation bar will move to
  final _routersInNav = const [
    HomeScreen(),
    SearchView(),
    CartView(),
    SettingsView()
  ];
  static String x = '';
   generateCountryFlag() {
    String countryCode = 'eg';

    String flag = countryCode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
        (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));

    x= flag;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, int>(
      builder: (context, state) {
        return Scaffold(
          appBar: BlocProvider.of<NavigationCubit>(context).state == 0
              ? AppBar(
                  toolbarHeight: 55,
                  automaticallyImplyLeading: false,
                  title: const CutomAppBarSearch(),
                  actions: const [
                    ClickableChatIcon(),
                  ],
                )
              : null,
          body: _routersInNav[BlocProvider.of<NavigationCubit>(context).state],
          bottomNavigationBar: BottomNavBarWidget(
            state: context.read<NavigationCubit>().state,
          ),
        );
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
    return const  Column(
      children: [
        SizedBox(height: 48),
        CarouselSliderWidget(),
        
        
      ],
    );
  }
}
