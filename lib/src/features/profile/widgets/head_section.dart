import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';

class HeadSection extends StatelessWidget {
  const HeadSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 69,
      width: 335,
      child: Row(
        children: [
          const SizedBox(
            height: 69,
            width: 69,
            child: CircleAvatar(backgroundColor: AppColor.primary),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Ira', style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 7),
                Text(
                  'Xyz@gmail.com',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          ),
          const Spacer(),
          InkWell(onTap: () {}, child: const Icon(Icons.more_horiz)),
        ],
      ),
    );
  }
}
