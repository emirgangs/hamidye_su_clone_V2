// ignore_for_file: camel_case_types, file_names
import 'package:flutter/material.dart';
import '../../const/texts.dart';
import '../../utility/colors.dart';

class homeScreenAppBar extends StatelessWidget {
  const homeScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: ColorItems().transpar,
      centerTitle: true,
      title: SizedBox(
        width: MediaQuery.sizeOf(context).height * 0.20,
        child: Image.asset(logo),
      ),
      pinned: false,
      floating: true,
      bottom: TabBar(
        //indicatorPadding: tabbarIdicatorpadding,
        indicatorColor: ColorItems().blue,
        isScrollable: true,
        labelColor: ColorItems().blue,
        labelStyle: Theme.of(context).textTheme.headlineSmall,
        unselectedLabelColor: ColorItems().pink,
        tabs: const [
          Tab(child: Text('Tümü')),
          Tab(child: Text('Damacana')),
          Tab(child: Text('Pet')),
          Tab(child: Text('Bardak')),
        ],
      ),
    );
  }
}
