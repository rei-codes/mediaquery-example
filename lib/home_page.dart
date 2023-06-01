import 'dart:developer';

import 'package:flutter/material.dart';

import 'details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    log('HomePage');
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          // OLD (BAD) WAY
          MediaQuery.of(context).platformBrightness.name,
          // NEW (GREAT) WAY
          // MediaQuery.platformBrightnessOf(context).name,
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
