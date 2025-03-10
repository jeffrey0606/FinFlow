import 'package:flutter/material.dart';
import 'package:fpb/home/view/widgets/activity_card.dart';
import 'package:fpb/l10n/l10n.dart';

class LatestActivitiesPage extends StatelessWidget {
  const LatestActivitiesPage({super.key});

  static const String routeName = '/latestActivities';

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints box) {
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.all(box.maxHeight * 0.025),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: box.maxHeight * 0.1,
                ),
                InkWell(
                  // onTap: () {
                  //   context.go('/savings');
                  // },
                  child: Icon(
                    Icons.arrow_back,
                    // color: AppColors.secondaryColorW,
                    size: 25,
                  ),
                ),
                SizedBox(
                  height: box.maxHeight * 0.025,
                ),
                Container(
                  height: box.maxHeight * .75,
                  width: box.maxHeight * .9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: box.maxHeight * 0.025,
                      left: box.maxHeight * 0.025,
                      right: box.maxHeight * 0.025,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              l10n.homeScreenLatestActivitiesTitle,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Container(
                              height: box.maxHeight * 0.03,
                              width: box.maxHeight * 0.03,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.grey,
                              ),
                              child: const Center(child: Text('5')),
                            )
                          ],
                        ),
                        SizedBox(
                          height: box.maxHeight * 0.025,
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 15,
                            itemBuilder: (context, index) {
                              // ignore: avoid_unnecessary_containers
                              return Column(
                                children: [
                                  ActivityCard(
                                    context: context,
                                    box: box,
                                  ),
                                  const Divider(),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
