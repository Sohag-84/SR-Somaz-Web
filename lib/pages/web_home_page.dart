import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/photos/logo.png",
            width: 30,
          ),
        ),
        title: const Text(
          'SAMAPRK',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.download),
            label: Text(
              'Donwload',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ),
          const Gap(10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "SR SOMAZ",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    const Text("The best app connecting with"),
                    const Text("Your friends and family members"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
