import 'package:flutter/material.dart';
import 'package:graduation_project/core/constants/colors.dart';
import 'widgets/theme_switch.dart';
import 'widgets/upper_profile_widget.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});
  static const _listTileTitles = [
    'Account',
    'Notifications',
    'Language',
    'payment ',
    'Help & Support',
    'Rate Us',
    'LogOut'
  ];
  static const _titlesIcon = [
    Icons.account_box,
    Icons.notifications,
    Icons.language,
    Icons.money,
    Icons.help_center,
    Icons.star,
    Icons.logout
  ];
  static const _iconsColor = [
    Colors.grey,
    Colors.redAccent,
    Color.fromARGB(255, 21, 117, 195),
    Colors.green,
    Color.fromARGB(255, 6, 113, 201),
    Color.fromARGB(255, 238, 220, 56),
    Colors.red,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SizedBox(height: 28),
            const UpperProfileWidget(),
            const SizedBox(height: 14),
            const SizedBox(
              height: 30,
              child: ThemeSwitch(),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    splashColor: ConstantColors.appMainColor,
                    onTap: () {
                      switch (index) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        default:
                      }
                    },
                    child: ListTile(
                      leading: Icon(
                        _titlesIcon[index],
                        color: _iconsColor[index],
                      ),
                      title: Text(
                        _listTileTitles[index],
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                    ),
                  );
                },
                itemCount: _listTileTitles.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
