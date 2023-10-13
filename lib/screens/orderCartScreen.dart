// ignore_for_file: file_names
import 'package:bloc_try_example_17_09_2023/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../const/texts.dart';
import '../core/tabbar_widgets/divider.dart';
import '../product/manager/shop_manager.dart';
import '../product/model/Widget_Model.dart';
import 'bottomNavigation.dart';

class OrderCartScreen extends StatefulWidget {
  const OrderCartScreen({super.key});

  @override
  State<OrderCartScreen> createState() => _OrderCartScreenState();
}

class _OrderCartScreenState extends State<OrderCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: ColorItems().transpar,
            title: Text('Sepetim',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: ColorItems().blue)),
            centerTitle: true),
        body: context.watch<ShopManager>().shopPhotoItems.isEmpty
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    orderScreenText1,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.3,
                    width: MediaQuery.sizeOf(context).width * 0.3,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorItems().blue,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text(
                          '0',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const BottomNavigationbar()));
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 130),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: const Text('Ürün Ekle'),
                  )
                ],
              )
            : Column(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      const Text('Ürünlerin Toplam Fiyatı'),
                      Text(
                        ' ${context.watch<ShopManager>().totalMoney} TL',
                        style: Theme.of(context).textTheme.headlineSmall,
                      )
                    ],
                  )),
                  Expanded(
                    flex: 7,
                    child: ListView.builder(
                      itemCount:
                          context.watch<ShopManager>().shopPhotoItems.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ProductListTile(
                                model: context
                                    .watch<ShopManager>()
                                    .shopPhotoItems[index]),
                            dividerMethod(),
                          ],
                        );
                      },
                    ),
                  )
                ],
              ));
  }
}
