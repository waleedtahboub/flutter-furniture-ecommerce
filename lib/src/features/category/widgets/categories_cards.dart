import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';

class CategoriesCards extends StatelessWidget {
  const CategoriesCards({
    super.key,
    required this.title,
    required this.imagePath,
    this.titleFontSize,
  });
  final String title;
  final String imagePath;
  final double? titleFontSize;
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
                child: CachedNetworkImage(
                  imageUrl: imagePath,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => const Center(
                    child: SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  errorWidget: (context, url, error) => const SizedBox(
                    height: 15,
                    width: 15,
                    child: Icon(Icons.error),
                  ),
                ),
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
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontSize: titleFontSize),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
