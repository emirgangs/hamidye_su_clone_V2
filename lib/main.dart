import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bloc/bloc_cats_view.dart';
import 'product/initiliaze/application_start.dart';
import 'product/manager/shop_manager.dart';

void main() async {
  await ApplicationStart.init();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ShopManager>(create: (context) => ShopManager())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bloc Example',
      home: BlocCatsView(),
    );
  }
}
