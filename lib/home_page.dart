import 'dart:developer';

import 'package:flutter/material.dart';

import 'details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    log('a${MediaQuery.of(context).viewInsets}');
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          color: Colors.red,
          height: 200,
          // OLD (BAD) WAY
          width: MediaQuery.of(context).size.width / 2,
          // NEW (GREAT) WAY
          // width: MediaQuery.sizeOf(context).width / 2,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => const DetailsPage()),
          );
        },
      ),
    );
  }
}
