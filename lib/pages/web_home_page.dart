import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sr_somaz_web/config/image_list.dart';

import 'package:sr_somaz_web/widgets/main_info.dart';
import 'package:sr_somaz_web/widgets/my_divider.dart';
import 'package:sr_somaz_web/widgets/web_feature_container.dart';

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
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MainInfo(),
              const Gap(40),
              const MyDivider(),
              const Gap(40),

              ///features
              Text(
                "Features",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onSurface,
                ),
              ),
              const Gap(40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WebFeatureContainer(
                    icon: Icons.info,
                    title: "Easy to use",
                    description:
                        "SR Somaz is a easy to use app where you can connect with each other",
                  ),
                  WebFeatureContainer(
                    icon: Icons.info,
                    title: "Easy to use",
                    description:
                        "SR Somaz is a easy to use app where you can connect with each other",
                  ),
                ],
              ),
              const Gap(25),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WebFeatureContainer(
                    icon: Icons.info,
                    title: "Easy to use",
                    description:
                        "SR Somaz is a easy to use app where you can connect with each other",
                  ),
                  WebFeatureContainer(
                    icon: Icons.info,
                    title: "Easy to use",
                    description:
                        "SR Somaz is a easy to use app where you can connect with each other",
                  ),
                ],
              ),
              const Gap(80),
              const MyDivider(),
              const Gap(40),

              ///app screen shorts
              Text(
                "App ScreenShorts",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onSurface,
                ),
              ),
              const Gap(40),
              SizedBox(
                height: 500,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 500,
                      width: 300,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(imageList[index]),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
