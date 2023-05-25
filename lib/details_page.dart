import 'dart:developer';

import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    log('DetailsPage');
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
