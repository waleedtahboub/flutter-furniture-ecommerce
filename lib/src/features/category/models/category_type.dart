import 'package:furniture_store_app/common/resources/assets.dart';

enum CategoryType {
  bedrooms(
    title: 'Bedrooms',
    imageUrl:
        'https://res.cloudinary.com/dmopozi2v/image/upload/v1775376567/bedrooms_enr9sz.jpg',
  ),
  dressingRoom(
    title: 'Dressing Room',
    imageUrl:
        'https://res.cloudinary.com/dmopozi2v/image/upload/v1775376567/dressing_room_a7j8ae.jpg',
  ),
  diningRoom(
    title: 'Dining Room',
    imageUrl:
        'https://res.cloudinary.com/dmopozi2v/image/upload/v1775376566/dinning_room_kh1503.jpg',
  ),
  kidsRoom(
    title: 'Kids Room',
    imageUrl:
        'https://res.cloudinary.com/dmopozi2v/image/upload/v1775376567/kids_room_ofuesh.jpg',
  ),
  livingRoom(
    title: 'Living Room',
    imageUrl:
        'https://res.cloudinary.com/dmopozi2v/image/upload/v1775376567/living_room.jpg',
  ),
  office(
    title: 'Office',
    imageUrl:
        'https://res.cloudinary.com/dmopozi2v/image/upload/v1775376567/office_calnuu.jpg',
  ),
  outdoors(
    title: 'Outdoors',
    imageUrl:
        'https://res.cloudinary.com/dmopozi2v/image/upload/v1775376567/outdoors_vx6v0g.jpg',
  ),
  guestsRoom(
    title: 'Guests Room',
    imageUrl:
        'https://res.cloudinary.com/dmopozi2v/image/upload/v1775376567/gusts_room.jpg',
  );

  const CategoryType({required this.title, required this.imageUrl});

  final String title;
  final String imageUrl;
}
