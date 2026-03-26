import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/extensions/string_extension.dart';
import 'package:furniture_store_app/common/models/product_model/product_model.dart';

class ColorSection extends StatefulWidget {
  const ColorSection({super.key, required this.product});
  final ProductModel product;

  @override
  State<ColorSection> createState() => _ColorSectionState();
}

class _ColorSectionState extends State<ColorSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Color',
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontSize: 19),
        ),
        const SizedBox(height: 4),
        Row(    
          children: [
            ...List.generate(widget.product.colors.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    backgroundColor: widget.product.colors[index].toColor(),
                  ),
                ),
              );
            }),
          ],
        ),
      ],
    );
  }
}
