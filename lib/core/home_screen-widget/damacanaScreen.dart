// ignore_for_file: file_names, camel_case_types, must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../const/texts.dart';
import '../../product/model/hamidye_Service_Model.dart';
import '../../product/model/Widget_Model.dart';
import '../../utility/exceptions/custom_exception.dart';
import '../tabbar_widgets/divider.dart';

class damacanaScreen extends StatefulWidget {
  const damacanaScreen({super.key});
  @override
  State<damacanaScreen> createState() => _damacanaScreenState();
}

class _damacanaScreenState extends State<damacanaScreen> {
  @override
  Widget build(BuildContext context) {
    CollectionReference damacanaStream =
        FirebaseFirestore.instance.collection('damacana');
    final response = damacanaStream.withConverter(
      fromFirestore: (snapshot, options) {
        final jsonBody = snapshot.data();
        if (jsonBody != null) {
          return Hamidye.fromJson(jsonBody);
        }
        return null;
      },
      toFirestore: (value, options) {
        if (value == null) throw FirebaseCustomException('$value boş degil');
        return value.toJson();
      },
    ).get();
    return Column(
      children: [
        Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                    textAlign: TextAlign.center,
                    tumuText1,
                    style: Theme.of(context).textTheme.titleSmall),
                Text(tumuText2, style: Theme.of(context).textTheme.bodyLarge),
              ],
            )),
        Expanded(
            flex: 8,
            child: FutureBuilder(
              future: response,
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                    return const Placeholder();
                  case ConnectionState.waiting:
                  case ConnectionState.active:
                    return const Center(child: CircularProgressIndicator());
                  case ConnectionState.done:
                    if (snapshot.hasData) {
                      final values =
                          snapshot.data!.docs.map((e) => e.data()).toList();
                      return ListView.builder(
                        itemCount: values.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ProductListTile(model: values[index]!),
                              dividerMethod()
                            ],
                          );
                        },
                      );
                    } else {
                      return const SizedBox();
                    }
                }
              },
            ))
      ],
    );
  }
}
