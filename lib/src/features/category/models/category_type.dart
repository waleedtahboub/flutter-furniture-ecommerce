import 'package:furniture_store_app/common/resources/assets.dart';

enum CategoryType {
  bedrooms(title: 'Bedrooms', imagePath: AppImages.bedrooms),
  dressingRoom(title: 'Dressing Room', imagePath: AppImages.dressingRoom),
  diningRoom(title: 'Dining Room', imagePath: AppImages.dinningRoom),
  kidsRoom(title: 'Kids Room', imagePath: AppImages.kidsRoom),
  livingRoom(title: 'Living Room', imagePath: AppImages.livingRoom),
  office(title: 'Office', imagePath: AppImages.office),
  outdoors(title: 'Outdoors', imagePath: AppImages.outdoors),
  guestsRoom(title: 'Guests Room', imagePath: AppImages.gustsRoom);

  const CategoryType({required this.title, required this.imagePath});

  final String title;
  final String imagePath;
}
