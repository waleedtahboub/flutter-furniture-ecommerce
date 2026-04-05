import 'package:furniture_store_app/common/resources/assets.dart';

enum CategoryType {
  bedrooms(
    title: 'Bedrooms',
    imagePath: AppImages.bedrooms,
    imageUrl: 'https://res.cloudinary.com/dmopozi2v/image/upload/v1775376567/bedrooms_enr9sz.jpg',
  ),
  dressingRoom(
    title: 'Dressing Room',
    imagePath: AppImages.dressingRoom,
    imageUrl: 'https://res.cloudinary.com/dmopozi2v/image/upload/v1775376567/dressing_room_a7j8ae.jpg',
  ),
  diningRoom(
    title: 'Dining Room',
    imagePath: AppImages.diningRoom,
    imageUrl: 'https://res.cloudinary.com/dmopozi2v/image/upload/v1775376566/dinning_room_kh1503.jpg',
  ),
  kidsRoom(
    title: 'Kids Room',
    imagePath: AppImages.kidsRoom,
    imageUrl: 'https://res.cloudinary.com/dmopozi2v/image/upload/v1775376567/kids_room_ofuesh.jpg',
  ),
  livingRoom(
    title: 'Living Room',
    imagePath: AppImages.livingRoom,
    imageUrl: 'https://res.cloudinary.com/dmopozi2v/image/upload/v1775376567/living_room.jpg',
  ),
  office(
    title: 'Office',
    imagePath: AppImages.office,
    imageUrl: 'https://res.cloudinary.com/dmopozi2v/image/upload/v1775376567/office_calnuu.jpg',
  ),
  outdoors(
    title: 'Outdoors',
    imagePath: AppImages.outdoors,
    imageUrl: 'https://res.cloudinary.com/dmopozi2v/image/upload/v1775376567/outdoors_vx6v0g.jpg',
  ),
  guestsRoom(
    title: 'Guests Room',
    imagePath: AppImages.guestsRoom,
    imageUrl: 'https://res.cloudinary.com/dmopozi2v/image/upload/v1775376567/gusts_room.jpg',
  );

  const CategoryType({
    required this.title,
    required this.imagePath,
    required this.imageUrl,
  });

  final String title;
  final String imagePath;
  final String imageUrl;
}
