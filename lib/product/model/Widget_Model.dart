// ignore_for_file: file_names

import 'package:bloc_try_example_17_09_2023/product/manager/shop_manager.dart';
import 'package:bloc_try_example_17_09_2023/product/model/hamidye_Service_Model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../const/texts.dart';
import '../../utility/colors.dart';

class ProductListTile extends StatefulWidget {
  const ProductListTile({super.key, required this.model});
  final Hamidye model;

  @override
  State<ProductListTile> createState() => _ProductListTileState();
}

class _ProductListTileState extends State<ProductListTile>
    with AutomaticKeepAliveClientMixin {
  late Hamidye model;
  @override
  void initState() {
    super.initState();
    model = widget.model;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListTile(
      leading: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.2,
          child: Image.network(model.image ?? '')),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(model.name ?? '', style: Theme.of(context).textTheme.titleLarge),
          Text(
            '${model.unit ?? ''} $unitText',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: ColorItems().red, fontWeight: FontWeight.bold),
          ),
          Text(
            '${model.value.toString()} $tl',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: ColorItems().black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                context.read<ShopManager>().removeShopItem(model);
              },
              icon: const Icon(Icons.remove)),
          Text(model.count.toString(),
              style: Theme.of(context).textTheme.bodyLarge),
          IconButton(
              onPressed: () {
                context.read<ShopManager>().addShopItem(model);
              },
              icon: const Icon(Icons.add)),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
