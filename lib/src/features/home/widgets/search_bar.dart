import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: 380,
      child: Stack(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              fillColor: AppColor.skaGray,
              filled: true,
              hintText: 'Search..',
              hintStyle: TextStyle(color: AppColor.onSecondary),

              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: AppColor.iconColor, width: 1),
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 42,
                width: 42,

                decoration: const BoxDecoration(
                  color: AppColor.primary,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: const Icon(Icons.filter_alt, color: AppColor.onPrimary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
