// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../core/home_screen-widget/AppBar.dart';
import '../core/home_screen-widget/bardakScreen.dart';
import '../core/home_screen-widget/damacanaScreen.dart';
import '../core/home_screen-widget/petScreen.dart';
import '../core/home_screen-widget/tumuScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int _four = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: _four,
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [const homeScreenAppBar()];
            },
            body: const TabBarView(
              children: [
                tumuScreen(),
                damacanaScreen(),
                petScreen(),
                bardakScreen(),
              ],
            )),
      ),
    );
  }
}
