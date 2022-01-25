import 'package:dhaalac_ui/screens/downloads.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dhaalac_ui/cubits/cubits.dart';
import 'package:dhaalac_ui/screens/screens.dart';
import 'package:dhaalac_ui/widgets/widgets.dart';

import 'account.dart';
import 'search.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    const HomeScreen(key: PageStorageKey('homeScreen')),
    const Scaffold(),
    const Downloads(),
    const Search(),
    const Account(),
  ];

  final Map<String, IconData> _icons = const {
    'Home': Icons.home,
    'Coming Soon': Icons.subscriptions,
    'Downloads': Icons.file_download,
    'Search': Icons.search,
    'Account': Icons.person,
  };

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<AppBarCubit>(
        create: (_) => AppBarCubit(),
        child: _screens[_currentIndex],
      ),
      bottomNavigationBar: !Responsive.isDesktop(context)
          ? BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              items: _icons
                  .map((title, icon) => MapEntry(
                      title,
                      BottomNavigationBarItem(
                        icon: Icon(icon, size: 30.0),
                        label: title,
                      )))
                  .values
                  .toList(),
              currentIndex: _currentIndex,
              selectedItemColor: Colors.white,
              selectedFontSize: 11.5,
              unselectedItemColor: Colors.grey,
              unselectedFontSize: 11.0,
              onTap: (index) => setState(() => _currentIndex = index),
            )
          : null,
    );
  }
}
