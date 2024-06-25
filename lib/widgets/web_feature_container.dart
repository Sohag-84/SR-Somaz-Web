import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class WebFeatureContainer extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  const WebFeatureContainer({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.sizeOf(context).width;
    final theme = Theme.of(context);
    return Container(
      height: 130,
      width: w / 3,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            height: w * .08,
            width: w * .08,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(icon, size: w * .03),
          ),
          const Gap(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    color: theme.colorScheme.surface,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 15,
                    color: theme.colorScheme.surface,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
