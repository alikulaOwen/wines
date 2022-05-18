
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../color/app_colors.dart';

class DetailsPage extends StatelessWidget {
  final String title;
  final String description;
  final List ingredients;
  const DetailsPage({
   Key? key, 
   required this.title,
   required this.description,
   required this.ingredients}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text("Coffee"),
            pinned: true,
            floating: true,
            snap: false,
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.info))
            ],
            
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Center(
              child: Container(
                height: 400,
                padding: const EdgeInsets.all(12),
                width: double.infinity,
                margin: const EdgeInsets.all(12),
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Center(
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(description),
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Chip(
                                backgroundColor: AppColors.auditionColor,
                                label: Text(ingredients
                                    .toString()
                                    .split('[')[1]
                                    .split(']')[0]
                                    )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                              ),
            ),
           Center(
              child: Container(
                height: 400,
                padding: const EdgeInsets.all(12),
                width: double.infinity,
                margin: const EdgeInsets.all(12),
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Acknowledgement',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                              child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: const [
                               Text('Special thanks to the Coffee API Developers, '),
                               Text(
                                    "Tukiomoka we'll buy you coffee"),
                              ],
                            ),
                          )),
                          const SizedBox(
                            height: 10,
                          ),
                          // Center(
                          //   child: Chip(
                          //       backgroundColor: AppColors.auditionColor,
                          //       label: Text(ingredients
                          //           .toString()
                          //           .split('[')[1]
                          //           .split(']')[0])),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
