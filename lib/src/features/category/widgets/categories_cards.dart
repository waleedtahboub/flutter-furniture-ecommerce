import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';

class CategoriesCards extends StatelessWidget {
  const CategoriesCards({
    super.key,
    required this.title,
    required this.imagePath,
  });
  final String title;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SizedBox(
                height: 186,
                width: 157.5,
                child: Image.network(imagePath, fit: BoxFit.cover),
              ),
            ),
            Container(
              height: 28,
              width: 158,
              color: AppColor.skaGray,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
