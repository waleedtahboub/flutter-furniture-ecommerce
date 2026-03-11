import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:furniture_store_app/src/features/category/models/category_type.dart';

final List<ProductModel> products = [
  ProductModel(
    imagePath: CategoryType.diningRoom.imagePath,
    name: 'Elegant Dining Table',
    category: CategoryType.diningRoom.title,
    rating: '4.7',
    basePrice: '\$450 ',
    salePrice: '200',
  ),
  ProductModel(
    imagePath: CategoryType.bedrooms.imagePath,
    name: 'Elegant Dining Table',
    category: CategoryType.diningRoom.title,
    rating: '5',
    basePrice: '\$320 ',
    salePrice: '\$150',
  ),
  ProductModel(
    imagePath: CategoryType.office.imagePath,
    name: 'Ergonomic Office Chair ',
    category: CategoryType.office.title,
    rating: '4.6',
    basePrice: '\$150 ',
    salePrice: '\$75',
  ),
];
