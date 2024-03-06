import 'package:eduflex/utlis/color.dart';
import 'package:eduflex/views/homepage/homepage.dart';
import 'package:flutter/material.dart';
import '../views/profile/profile.dart';

const TextStyle _textStyle = TextStyle(
  fontSize: 38,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontStyle: FontStyle.italic,
);

class MaterialYou extends StatefulWidget {
  const MaterialYou({Key? key}) : super(key: key);

  @override
  State<MaterialYou> createState() => _MaterialYouState();
}

class _MaterialYouState extends State<MaterialYou> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.transparent,
          backgroundColor: AppColors.navgationbarcolor,
          labelTextStyle: MaterialStateProperty.all(
            AppStyles.grey14,
          ),
        ),
        child: NavigationBar(
          selectedIndex: _currentIndex,
          onDestinationSelected: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(
                Icons.home,
                color: Color(0xff0ff8B3C7F),
              ),
              icon: Icon(
                Icons.home,
                color: Color(0xff000000),
              ),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.person,
                color: Color(0xff0ff8B3C7F),
              ),
              icon: Icon(
                Icons.person,
                color: AppColors.greycolor,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> get pages => [
        HomePage(),
        Profile(),
      ];
}
