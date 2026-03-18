import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:furniture_store_app/common/models/review_model/review_model.dart';
import 'package:furniture_store_app/src/features/category/models/category_type.dart';

final List<ProductModel> products = [
  ProductModel(
    imagePath: CategoryType.diningRoom.imagePath,
    name: 'Elegant Dining Table',
    category: CategoryType.diningRoom.title,
    rating: '4.7',
    basePrice: '\$450 ',
    salePrice: '\$200',
    description:
        'A beautifully crafted solid wood dining table that comfortably seats up to 6 guests, making it the heart of your dining room. This masterpiece features a rich, deep walnut finish that highlights the natural grain of the wood, complemented by elegant tapered legs for a modern yet timeless silhouette. The surface is treated with a specialized smooth, scratch-resistant coating, ensuring it maintains its premium look even after years of family dinners and lively entertaining. Built with durability in mind, its sturdy construction makes it perfect for everyday use, while the refined design effortlessly elevates your home decor. Whether you are hosting a formal holiday feast or enjoying a quiet morning breakfast, this table provides the perfect balance of luxury, comfort, and long-lasting quality.',
    colors: [
      '8B5A2B', // Wood Brown
      '4B3621', // Dark Walnut
      '000000', // Black
    ],
    reviews: [
      ReviewModel(
        reviewerName: 'John Doe',
        date: DateTime(2024, 1, 15),
        comment: 'Absolutely love this table!  The wood quality is superb.',
        rating: 5.0,
      ),
      ReviewModel(
        reviewerName: 'Jane Smith',
        date: DateTime(2024, 1, 20),
        comment: 'Perfect size for our dining room. Very sturdy.',
        rating: 4.5,
      ),
      ReviewModel(
        reviewerName: 'Michael Brown',
        date: DateTime(2024, 2, 5),
        comment: 'Excellent craftsmanship. Worth every penny.',
        rating: 5.0,
      ),
      ReviewModel(
        reviewerName: 'Emily Davis',
        date: DateTime(2024, 2, 12),
        comment: 'The walnut finish is beautiful. Highly recommend.',
        rating: 3,
      ),
      ReviewModel(
        reviewerName: 'Chris Wilson',
        date: DateTime(2024, 2, 18),
        comment: 'Matches our decor perfectly. Assembly was easy.',
        rating: 4.5,
      ),
      ReviewModel(
        reviewerName: 'Sarah Miller',
        date: DateTime(2024, 3, 1),
        comment: 'Great table for entertaining guests. Very elegant.',
        rating: 3,
      ),
      ReviewModel(
        reviewerName: 'David Taylor',
        date: DateTime(2024, 3, 5),
        comment: 'Solid construction and looks great in person.',
        rating: 2,
      ),
    ],
  ),
  ProductModel(
    imagePath: CategoryType.bedrooms.imagePath,
    name: 'Luxury King Bed Frame',
    category: CategoryType.bedrooms.title,
    rating: '5',
    basePrice: '\$320 ',
    salePrice: '\$150',
    description:
        'A premium king-size bed frame with a padded upholstered headboard wrapped in soft linen fabric. Built with a sturdy steel frame and wooden slats for long-lasting support. Includes built-in under-bed storage drawers.',
    colors: [
      'D3D3D3', // Light Grey
      'F5F5DC', // Beige
      '000080', // Navy Blue
    ],
    reviews: [
      ReviewModel(
        reviewerName: 'Alice Johnson',
        date: DateTime(2024, 1, 10),
        comment: 'The storage drawers are a lifesaver! Very comfy.',
        rating: 5.0,
      ),
      ReviewModel(
        reviewerName: 'Robert White',
        date: DateTime(2024, 2, 22),
        comment: 'Top-tier quality. Best sleep I\'ve had in years.',
        rating: 5.0,
      ),
    ],
  ),
  ProductModel(
    imagePath: CategoryType.office.imagePath,
    name: 'Ergonomic Office Chair',
    category: CategoryType.office.title,
    rating: '4.6',
    basePrice: '\$150 ',
    salePrice: '\$75',
    description:
        'A high-performance ergonomic office chair with adjustable lumbar support, breathable mesh back, and cushioned seat. Features 360° swivel, adjustable armrests, and a tilt-lock mechanism for all-day comfort.',
    colors: [
      '000000', // Black
      'FFFFFF', // White
      '0000FF', // Blue
      '808080', // Grey
    ],
    reviews: [
      ReviewModel(
        reviewerName: 'Kevin Lee',
        date: DateTime(2024, 3, 10),
        comment: 'Great support for long working hours.',
        rating: 4.5,
      ),
    ],
  ),
];
