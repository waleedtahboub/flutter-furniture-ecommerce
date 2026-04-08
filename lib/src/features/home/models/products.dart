import 'package:furniture_store_app/common/models/product_model/product_model.dart';
import 'package:furniture_store_app/common/models/review_model/review_model.dart';
import 'package:furniture_store_app/src/features/category/models/category_type.dart';

// Seed data using IKEA product images for testing purposes.
// categoryId values are placeholders — replaced with real Firestore IDs during seeding.

final List<ProductModel> products = [
  // ──────────────────────────────────────────────
  // LIVING ROOM (3 products)
  // ──────────────────────────────────────────────
  ProductModel(
    id: 'temp_1',
    imageUrl:
        'https://www.ikea.com/jo/en/images/products/saltsjoebaden-corner-sofa-4-seat-tonerud-red-brown__1421445_pe977643_s5.jpg?f=xu',
    name: 'SALTSJÖBADEN Corner Sofa',
    categoryId: 'placeholder',
    categoryName: CategoryType.livingRoom.title,
    rating: 4.7,
    basePrice: 1019,
    salePrice: 879,
    description:
        'A spacious 4-seat corner sofa upholstered in Tonerud red-brown fabric. Features medium firm cushions for optimal comfort, sturdy wooden legs, and a modular design that fits perfectly into any living room corner.',
    colors: ['8B4513', 'F5F5DC', '808080'],
    reviews: [
      ReviewModel(
        reviewerName: 'Ahmad K.',
        date: DateTime(2024, 2, 10),
        comment: 'Very comfortable and fits perfectly in our living room.',
        rating: 5.0,
      ),
      ReviewModel(
        reviewerName: 'Sara M.',
        date: DateTime(2024, 3, 5),
        comment: 'Great quality fabric. Color is exactly as shown.',
        rating: 4.5,
      ),
    ],
    createdAt: DateTime(2024, 1, 1),
  ),
  ProductModel(
    id: 'temp_2',
    imageUrl:
        'https://www.ikea.com/jo/en/images/products/lillesaeter-3-seat-sofa-axvall-off-white__1480254_pe1000158_s5.jpg?f=xu',
    name: 'LILLESÄTER 3-Seat Sofa',
    categoryId: 'placeholder',
    categoryName: CategoryType.livingRoom.title,
    rating: 4.8,
    basePrice: 999,
    salePrice: 849,
    description:
        'An elegant 3-seat sofa in Axvall off-white with clean Scandinavian lines. Features high-resilience foam cushions, removable and washable covers, and solid birch legs for a timeless, airy look.',
    colors: ['FFFFF0', '90EE90', 'D3D3D3'],
    reviews: [
      ReviewModel(
        reviewerName: 'Lina R.',
        date: DateTime(2024, 1, 20),
        comment: 'Stunning design. The off-white color brightens the room.',
        rating: 5.0,
      ),
    ],
    createdAt: DateTime(2024, 1, 5),
  ),
  ProductModel(
    id: 'temp_3',
    imageUrl:
        'https://www.ikea.com/jo/en/images/products/mannarp-4-seat-sofa-with-chaise-longues-saxemara-grey-beige__1446826_pe988786_s5.jpg?f=xu',
    name: 'MANNARP Sectional Sofa',
    categoryId: 'placeholder',
    categoryName: CategoryType.livingRoom.title,
    rating: 4.6,
    basePrice: 779,
    salePrice: 659,
    description:
        'A versatile 4-seat sofa with double chaise longues in Saxemara grey-beige. Medium firm cushions provide all-day comfort. The deep seating and wide armrests make it ideal for family lounging and movie nights.',
    colors: ['D2B48C', '000080', 'F5F5DC'],
    reviews: [
      ReviewModel(
        reviewerName: 'Omar H.',
        date: DateTime(2024, 2, 15),
        comment: 'The chaise longues are amazing for stretching out.',
        rating: 4.5,
      ),
      ReviewModel(
        reviewerName: 'Rania A.',
        date: DateTime(2024, 3, 1),
        comment: 'Medium firm is perfect. Not too soft, not too hard.',
        rating: 4.5,
      ),
    ],
    createdAt: DateTime(2024, 1, 10),
  ),

  // ──────────────────────────────────────────────
  // BEDROOMS (3 products)
  // ──────────────────────────────────────────────
  ProductModel(
    id: 'temp_4',
    imageUrl:
        'https://www.ikea.com/jo/en/images/products/hemnes-day-bed-w-3-drawers-2-mattresses-grey-green-agotnes-firm__1471603_pe997304_s5.jpg?f=xu',
    name: 'HEMNES Day-Bed',
    categoryId: 'placeholder',
    categoryName: CategoryType.bedrooms.title,
    rating: 4.8,
    basePrice: 449,
    salePrice: 389,
    description:
        'A multifunctional day-bed in grey-green with 3 spacious storage drawers and 2 firm Ågotnes mattresses. Converts from a single sofa to a double bed in seconds. The lacquered pine finish adds a warm, classic touch to any bedroom.',
    colors: ['8FBC8F', 'F5F5DC', 'FFFFFF'],
    reviews: [
      ReviewModel(
        reviewerName: 'Nour S.',
        date: DateTime(2024, 1, 10),
        comment: 'Perfect for the guest room. Storage drawers are huge!',
        rating: 5.0,
      ),
      ReviewModel(
        reviewerName: 'Khalid M.',
        date: DateTime(2024, 2, 22),
        comment: 'Converts to double bed easily. Great quality mattresses.',
        rating: 4.5,
      ),
    ],
    createdAt: DateTime(2024, 1, 15),
  ),
  ProductModel(
    id: 'temp_5',
    imageUrl:
        'https://www.ikea.com/jo/en/images/products/strandmon-wing-chair-tommaboda-deep-beige__1478943_pe999900_s5.jpg?f=xu',
    name: 'STRANDMON Wing Chair',
    categoryId: 'placeholder',
    categoryName: CategoryType.bedrooms.title,
    rating: 4.5,
    basePrice: 299,
    salePrice: 249,
    description:
        'A classic wing chair in Tommaboda deep beige with generous proportions and high back support. The curved wings provide a cozy, enclosed feeling — perfect as a reading corner piece in the bedroom. Comes with a matching lumbar cushion.',
    colors: ['F5DEB3', '8B0000', '4682B4'],
    reviews: [
      ReviewModel(
        reviewerName: 'Huda T.',
        date: DateTime(2024, 3, 8),
        comment: 'My favorite reading spot. Extremely comfortable.',
        rating: 5.0,
      ),
    ],
    createdAt: DateTime(2024, 1, 20),
  ),
  ProductModel(
    id: 'temp_6',
    imageUrl:
        'https://www.ikea.com/jo/en/images/products/saltsjoebaden-armchair-fridtuna-light-beige__1421500_pe977693_s5.jpg?f=xu',
    name: 'SALTSJÖBADEN Armchair',
    categoryId: 'placeholder',
    categoryName: CategoryType.bedrooms.title,
    rating: 4.4,
    basePrice: 289,
    salePrice: 239,
    description:
        'A modern armchair in Fridtuna light beige with a low, wide silhouette. Features pocket spring cushions for superior comfort, solid birch legs, and a removable washable cover. Perfect accent piece for a bedroom corner.',
    colors: ['F5F5DC', '808080', '8B4513'],
    reviews: [
      ReviewModel(
        reviewerName: 'Yazan Q.',
        date: DateTime(2024, 2, 5),
        comment: 'Looks great next to the bed. Very stylish.',
        rating: 4.5,
      ),
      ReviewModel(
        reviewerName: 'Dina F.',
        date: DateTime(2024, 3, 12),
        comment: 'Washable covers are a must-have. Great design.',
        rating: 4.0,
      ),
    ],
    createdAt: DateTime(2024, 1, 25),
  ),

  // ──────────────────────────────────────────────
  // DINING ROOM (3 products)
  // ──────────────────────────────────────────────
  ProductModel(
    id: 'temp_7',
    imageUrl:
        'https://www.ikea.com/jo/en/images/products/lillesaeter-4-seat-sofa-gunnared-bright-green-yellow__1480260_pe1000160_s5.jpg?f=xu',
    name: 'LILLESÄTER 4-Seat Sofa',
    categoryId: 'placeholder',
    categoryName: CategoryType.diningRoom.title,
    rating: 4.6,
    basePrice: 1199,
    salePrice: 999,
    description:
        'A bold 4-seat sofa in Gunnared bright green-yellow that makes a statement in any dining area. Features deep seating, high-resilience foam, and durable woven fabric. The vibrant color adds a touch of Scandinavian energy to your space.',
    colors: ['9ACD32', 'FFFFF0', '808080'],
    reviews: [
      ReviewModel(
        reviewerName: 'Fadi L.',
        date: DateTime(2024, 1, 15),
        comment: 'The green-yellow color is so vibrant. Love it!',
        rating: 5.0,
      ),
    ],
    createdAt: DateTime(2024, 2, 1),
  ),
  ProductModel(
    id: 'temp_8',
    imageUrl:
        'https://www.ikea.com/jo/en/images/products/mannarp-3-seat-sofa-gunnared-beige__1446809_pe988705_s5.jpg?f=xu',
    name: 'MANNARP 3-Seat Sofa',
    categoryId: 'placeholder',
    categoryName: CategoryType.diningRoom.title,
    rating: 4.4,
    basePrice: 349,
    salePrice: 299,
    description:
        'A compact 3-seat sofa in Gunnared beige with clean lines and medium firm cushions. The slim silhouette fits perfectly in smaller dining spaces. Features removable armrest covers and solid metal legs for a modern industrial look.',
    colors: ['F5F5DC', '000080', 'D2B48C'],
    reviews: [
      ReviewModel(
        reviewerName: 'Maha B.',
        date: DateTime(2024, 2, 18),
        comment: 'Perfect size for our small dining area.',
        rating: 4.5,
      ),
      ReviewModel(
        reviewerName: 'Tareq W.',
        date: DateTime(2024, 3, 5),
        comment: 'Good value for money. Comfortable enough.',
        rating: 4.0,
      ),
    ],
    createdAt: DateTime(2024, 2, 5),
  ),
  ProductModel(
    id: 'temp_9',
    imageUrl:
        'https://www.ikea.com/jo/en/images/products/tranered-armrest-tray-dark-brown__1478956_pe999901_s5.jpg?f=xxs',
    name: 'TRANERED Armrest Tray',
    categoryId: 'placeholder',
    categoryName: CategoryType.diningRoom.title,
    rating: 4.3,
    basePrice: 14.99,
    salePrice: 12.99,
    description:
        'A smart dark brown armrest tray made from solid bamboo. Fits snugly over most sofa armrests, providing a stable surface for drinks, snacks, or your remote. Features anti-slip silicone pads on the underside.',
    colors: ['4B3621', '8B5A2B', 'DEB887'],
    reviews: [
      ReviewModel(
        reviewerName: 'Sami N.',
        date: DateTime(2024, 3, 10),
        comment: 'Simple but genius product. Use it every day.',
        rating: 4.5,
      ),
    ],
    createdAt: DateTime(2024, 2, 10),
  ),

  // ──────────────────────────────────────────────
  // KIDS ROOM (3 products)
  // ──────────────────────────────────────────────
  ProductModel(
    id: 'temp_10',
    imageUrl:
        'https://www.ikea.com/jo/en/images/products/strandmon-footstool-with-storage-sulviken-blue-beige__1483778_pe1001341_s5.jpg?f=xu',
    name: 'STRANDMON Storage Footstool',
    categoryId: 'placeholder',
    categoryName: CategoryType.kidsRoom.title,
    rating: 4.7,
    basePrice: 89.99,
    salePrice: 74.99,
    description:
        'A charming footstool in Sulviken blue/beige with hidden interior storage. The lift-top reveals a spacious compartment perfect for toys, books, or blankets. The rounded shape and padded top make it safe and comfortable for children.',
    colors: ['4682B4', 'F5DEB3', 'FFD700'],
    reviews: [
      ReviewModel(
        reviewerName: 'Layla Z.',
        date: DateTime(2024, 1, 25),
        comment: 'Kids love sitting on it. Storage inside is a bonus!',
        rating: 5.0,
      ),
      ReviewModel(
        reviewerName: 'Hassan D.',
        date: DateTime(2024, 2, 10),
        comment: 'Sturdy enough for kids to climb on. Great quality.',
        rating: 4.5,
      ),
    ],
    createdAt: DateTime(2024, 2, 15),
  ),
  ProductModel(
    id: 'temp_11',
    imageUrl:
        'https://www.ikea.com/jo/en/images/products/ismantorp-armchair-metal-black-blue-tibbleby-beige-grey__1447786_pe989259_s5.jpg?f=xu',
    name: 'ISMANTORP Kids Armchair',
    categoryId: 'placeholder',
    categoryName: CategoryType.kidsRoom.title,
    rating: 4.5,
    basePrice: 99.99,
    salePrice: 84.99,
    description:
        'A compact armchair with a metal black-blue frame and Tibbleby beige-grey cushioned seat. The lightweight design makes it easy for kids to move around their room. Features a low seat height perfect for children aged 6 and up.',
    colors: ['000080', 'D3D3D3', 'F5F5DC'],
    reviews: [
      ReviewModel(
        reviewerName: 'Rana K.',
        date: DateTime(2024, 3, 5),
        comment: 'My daughter loves her own special chair!',
        rating: 4.5,
      ),
    ],
    createdAt: DateTime(2024, 2, 20),
  ),
  ProductModel(
    id: 'temp_12',
    imageUrl:
        'https://www.ikea.com/jo/en/images/products/saltmyran-2-seat-sofa-oereryd-blue__1456523_pe992368_s5.jpg?f=xu',
    name: 'SALTMYRAN 2-Seat Sofa',
    categoryId: 'placeholder',
    categoryName: CategoryType.kidsRoom.title,
    rating: 4.6,
    basePrice: 299,
    salePrice: 249,
    description:
        'A playful 2-seat sofa in Öreryd blue with a fun, rounded design perfect for a kids room. Features stain-resistant fabric, easy-clean cushion covers, and a lightweight frame that can be repositioned easily.',
    colors: ['4169E1', 'D2B48C', 'FFFFFF'],
    reviews: [
      ReviewModel(
        reviewerName: 'Joud A.',
        date: DateTime(2024, 2, 28),
        comment: 'The blue color is beautiful. Easy to clean too!',
        rating: 5.0,
      ),
      ReviewModel(
        reviewerName: 'Basil R.',
        date: DateTime(2024, 3, 15),
        comment: 'Perfect size for the kids playroom.',
        rating: 4.0,
      ),
    ],
    createdAt: DateTime(2024, 2, 25),
  ),

  // ──────────────────────────────────────────────
  // DRESSING ROOM (3 products)
  // ──────────────────────────────────────────────
  ProductModel(
    id: 'temp_13',
    imageUrl:
        'https://www.ikea.com/jo/en/images/products/strandmon-slipcover-for-wing-chair-ribersborg-dark-grey-beige__1447801_pe989263_s5.jpg?f=xu',
    name: 'STRANDMON Wing Chair Cover',
    categoryId: 'placeholder',
    categoryName: CategoryType.dressingRoom.title,
    rating: 4.3,
    basePrice: 40,
    salePrice: 34.99,
    description:
        'A premium slipcover in Ribersborg dark grey/beige for the STRANDMON wing chair. Made from a durable cotton-polyester blend with a zipper closure for easy fitting. Machine washable for effortless maintenance. Refreshes your dressing room chair instantly.',
    colors: ['696969', 'F5F5DC', '2F4F4F'],
    reviews: [
      ReviewModel(
        reviewerName: 'Amal G.',
        date: DateTime(2024, 2, 14),
        comment: 'Fits perfectly. Transformed my old chair completely.',
        rating: 4.5,
      ),
    ],
    createdAt: DateTime(2024, 3, 1),
  ),
  ProductModel(
    id: 'temp_14',
    imageUrl:
        'https://www.ikea.com/jo/en/images/products/strandmon-slipcover-for-footstool-ribersborg-dark-grey-beige__1447793_pe989262_s5.jpg?f=xu',
    name: 'STRANDMON Footstool Cover',
    categoryId: 'placeholder',
    categoryName: CategoryType.dressingRoom.title,
    rating: 4.2,
    basePrice: 15,
    salePrice: 12.99,
    description:
        'A matching slipcover for the STRANDMON footstool in Ribersborg dark grey/beige. Made from the same durable fabric as the wing chair cover for a coordinated dressing room look. Easy to remove and machine wash.',
    colors: ['696969', 'F5F5DC', '000000'],
    reviews: [
      ReviewModel(
        reviewerName: 'Nadia J.',
        date: DateTime(2024, 3, 1),
        comment: 'Matches the wing chair cover perfectly. Nice quality.',
        rating: 4.0,
      ),
    ],
    createdAt: DateTime(2024, 3, 5),
  ),
  ProductModel(
    id: 'temp_15',
    imageUrl:
        'https://www.ikea.com/jo/en/images/products/saltsjoebaden-cover-for-armchair-tonerud-red-brown__1421501_pe977694_s5.jpg?f=xu',
    name: 'SALTSJÖBADEN Armchair Cover',
    categoryId: 'placeholder',
    categoryName: CategoryType.dressingRoom.title,
    rating: 4.4,
    basePrice: 59,
    salePrice: 49.99,
    description:
        'A stylish armchair cover in Tonerud red-brown made from recycled polyester. Features a tailored fit with an easy zipper installation. The warm terracotta tone adds a sophisticated accent to any dressing room.',
    colors: ['A0522D', '808080', 'FFFFF0'],
    reviews: [
      ReviewModel(
        reviewerName: 'Reem H.',
        date: DateTime(2024, 2, 20),
        comment: 'Beautiful color. Love that it uses recycled material.',
        rating: 4.5,
      ),
      ReviewModel(
        reviewerName: 'Ziad P.',
        date: DateTime(2024, 3, 8),
        comment: 'Easy to put on. Looks premium.',
        rating: 4.0,
      ),
    ],
    createdAt: DateTime(2024, 3, 10),
  ),

  // ──────────────────────────────────────────────
  // OFFICE (3 products)
  // ──────────────────────────────────────────────
  ProductModel(
    id: 'temp_16',
    imageUrl:
        'https://www.ikea.com/jo/en/images/products/mannarp-4-seat-sofa-with-chaise-longue-gunnared-beige__1446821_pe988781_s5.jpg?f=xu',
    name: 'MANNARP Office Lounge',
    categoryId: 'placeholder',
    categoryName: CategoryType.office.title,
    rating: 4.5,
    basePrice: 559,
    salePrice: 479,
    description:
        'A 4-seat sofa with chaise longue in Gunnared beige, ideal for office reception or lounge areas. Medium firm back cushions promote good posture during long meetings. The clean Scandinavian design complements any professional environment.',
    colors: ['F5F5DC', '000080', 'D2B48C'],
    reviews: [
      ReviewModel(
        reviewerName: 'Karim E.',
        date: DateTime(2024, 1, 30),
        comment: 'Perfect for our office waiting area. Very professional.',
        rating: 4.5,
      ),
    ],
    createdAt: DateTime(2024, 3, 15),
  ),
  ProductModel(
    id: 'temp_17',
    imageUrl:
        'https://www.ikea.com/jo/en/images/products/saltmyran-3-seat-sofa-oereryd-grey-beige__1479793_pe1000083_s5.jpg?f=xu',
    name: 'SALTMYRAN Office Sofa',
    categoryId: 'placeholder',
    categoryName: CategoryType.office.title,
    rating: 4.4,
    basePrice: 349,
    salePrice: 299,
    description:
        'A sleek 3-seat sofa in Öreryd grey-beige with minimalist lines perfect for modern office spaces. The compact footprint fits easily in small meeting rooms or break areas. Durable commercial-grade fabric withstands heavy daily use.',
    colors: ['D2B48C', '4169E1', '808080'],
    reviews: [
      ReviewModel(
        reviewerName: 'Tarek Y.',
        date: DateTime(2024, 2, 25),
        comment: 'Compact and stylish. Clients always compliment it.',
        rating: 4.5,
      ),
      ReviewModel(
        reviewerName: 'Lama W.',
        date: DateTime(2024, 3, 10),
        comment: 'Comfortable for quick meetings. Easy to maintain.',
        rating: 4.0,
      ),
    ],
    createdAt: DateTime(2024, 3, 20),
  ),
  ProductModel(
    id: 'temp_18',
    imageUrl:
        'https://www.ikea.com/jo/en/images/products/mannarp-cover-for-chaise-longue-gunnared-beige__1530783_pe1015464_s5.jpg?f=xu',
    name: 'MANNARP Chaise Cover',
    categoryId: 'placeholder',
    categoryName: CategoryType.office.title,
    rating: 4.1,
    basePrice: 40,
    salePrice: 34.99,
    description:
        'A replacement cover for the MANNARP chaise longue in Gunnared beige. Made from durable woven fabric that resists pilling and fading. Perfect for refreshing office furniture without buying new pieces.',
    colors: ['F5F5DC', '000080', 'D2B48C'],
    reviews: [
      ReviewModel(
        reviewerName: 'Bayan S.',
        date: DateTime(2024, 3, 15),
        comment: 'Made our old office chaise look brand new.',
        rating: 4.0,
      ),
    ],
    createdAt: DateTime(2024, 3, 25),
  ),

  // ──────────────────────────────────────────────
  // OUTDOORS (3 products)
  // ──────────────────────────────────────────────
  ProductModel(
    id: 'temp_19',
    imageUrl:
        'https://www.ikea.com/jo/en/images/products/saltsjoebaden-3-seat-sofa-with-chaise-longue-tonerud-red-brown__1421473_pe977669_s5.jpg?f=xu',
    name: 'SALTSJÖBADEN Chaise Sofa',
    categoryId: 'placeholder',
    categoryName: CategoryType.outdoors.title,
    rating: 4.7,
    basePrice: 659,
    salePrice: 559,
    description:
        'A generous 3-seat sofa with chaise longue in Tonerud red-brown. The warm terracotta tone brings outdoor warmth to covered patios. Medium firm cushions with removable covers for easy seasonal cleaning.',
    colors: ['A0522D', '808080', 'FFFFF0'],
    reviews: [
      ReviewModel(
        reviewerName: 'Waleed F.',
        date: DateTime(2024, 2, 1),
        comment: 'Beautiful color for our covered terrace.',
        rating: 5.0,
      ),
    ],
    createdAt: DateTime(2024, 4, 1),
  ),
  ProductModel(
    id: 'temp_20',
    imageUrl:
        'https://www.ikea.com/jo/en/images/products/saltsjoebaden-2-seat-sofa-blekinge-white__1421454_pe977651_s5.jpg?f=xu',
    name: 'SALTSJÖBADEN 2-Seat Sofa',
    categoryId: 'placeholder',
    categoryName: CategoryType.outdoors.title,
    rating: 4.5,
    basePrice: 399,
    salePrice: 339,
    description:
        'A crisp 2-seat sofa in Blekinge white with a light, airy design. The compact size makes it ideal for balconies or small covered outdoor spaces. Features treated fabric that resists light moisture and UV fading.',
    colors: ['FFFFFF', '808080', 'A0522D'],
    reviews: [
      ReviewModel(
        reviewerName: 'Samar T.',
        date: DateTime(2024, 3, 20),
        comment: 'Perfect for our balcony. Looks so fresh in white.',
        rating: 4.5,
      ),
      ReviewModel(
        reviewerName: 'Amjad R.',
        date: DateTime(2024, 3, 28),
        comment: 'Compact but comfortable. Great for small spaces.',
        rating: 4.0,
      ),
    ],
    createdAt: DateTime(2024, 4, 5),
  ),
  ProductModel(
    id: 'temp_21',
    imageUrl:
        'https://www.ikea.com/jo/en/images/products/saltsjoebaden-3-seat-sofa-tonerud-grey__1498177_pe1006222_s5.jpg?f=xu',
    name: 'SALTSJÖBADEN 3-Seat Grey',
    categoryId: 'placeholder',
    categoryName: CategoryType.outdoors.title,
    rating: 4.6,
    basePrice: 469,
    salePrice: 399,
    description:
        'A sophisticated 3-seat sofa in Tonerud grey with medium firm cushions. The neutral tone complements any outdoor setting. Features weather-aware fabric design and removable cushion covers for easy maintenance.',
    colors: ['808080', 'FFFFFF', '2F4F4F'],
    reviews: [
      ReviewModel(
        reviewerName: 'Imad K.',
        date: DateTime(2024, 2, 15),
        comment: 'The grey is very versatile. Goes with everything.',
        rating: 4.5,
      ),
    ],
    createdAt: DateTime(2024, 4, 10),
  ),

  // ──────────────────────────────────────────────
  // GUESTS ROOM (3 products)
  // ──────────────────────────────────────────────
  ProductModel(
    id: 'temp_22',
    imageUrl:
        'https://www.ikea.com/jo/en/images/products/saltsjoebaden-cover-f-3-seat-sofa-w-chaise-longue-fridtuna-light-beige__1421466_pe977662_s5.jpg?f=xu',
    name: 'SALTSJÖBADEN Sofa Cover',
    categoryId: 'placeholder',
    categoryName: CategoryType.guestsRoom.title,
    rating: 4.3,
    basePrice: 129,
    salePrice: 109,
    description:
        'A replacement cover for the SALTSJÖBADEN 3-seat sofa with chaise longue in Fridtuna light beige. Made from recycled polyester and cotton blend. Machine washable and easy to install — keeps your guest room furniture looking fresh.',
    colors: ['F5F5DC', 'A0522D', '808080'],
    reviews: [
      ReviewModel(
        reviewerName: 'Zainab Q.',
        date: DateTime(2024, 1, 18),
        comment: 'Transformed the guest room sofa. Feels brand new!',
        rating: 4.5,
      ),
    ],
    createdAt: DateTime(2024, 4, 15),
  ),
  ProductModel(
    id: 'temp_23',
    imageUrl:
        'https://www.ikea.com/jo/en/images/products/mannarp-cover-for-3-seat-sofa-gunnared-beige__1530783_pe1015464_s5.jpg?f=xu',
    name: 'MANNARP 3-Seat Sofa Cover',
    categoryId: 'placeholder',
    categoryName: CategoryType.guestsRoom.title,
    rating: 4.2,
    basePrice: 89,
    salePrice: 74.99,
    description:
        'A durable replacement cover for the MANNARP 3-seat sofa in Gunnared beige. Easy to swap out between guest visits for a always-fresh look. Made from a tightly woven polyester blend that resists stains and wear.',
    colors: ['F5F5DC', '000080', 'D2B48C'],
    reviews: [
      ReviewModel(
        reviewerName: 'Rasha M.',
        date: DateTime(2024, 2, 8),
        comment: 'Great for keeping the guest room looking clean.',
        rating: 4.0,
      ),
      ReviewModel(
        reviewerName: 'Firas B.',
        date: DateTime(2024, 3, 14),
        comment: 'Good quality for the price. Easy to install.',
        rating: 4.5,
      ),
    ],
    createdAt: DateTime(2024, 4, 20),
  ),
  ProductModel(
    id: 'temp_24',
    imageUrl:
        'https://www.ikea.com/jo/en/images/products/jaettebo-chaise-longue-module-right-samsala-dark-blue__1447966_pe989379_s5.jpg?f=xu',
    name: 'JÄTTEBO Chaise Module',
    categoryId: 'placeholder',
    categoryName: CategoryType.guestsRoom.title,
    rating: 4.6,
    basePrice: 505,
    salePrice: 429,
    description:
        'A right-side chaise longue module in Samsala dark blue. Can be used standalone or combined with other JÄTTEBO modules for a custom configuration. Features washable covers, deep seating, and a timeless corduroy texture.',
    colors: ['00008B', '9ACD32', 'D2B48C'],
    reviews: [
      ReviewModel(
        reviewerName: 'Lubna Y.',
        date: DateTime(2024, 2, 5),
        comment: 'The dark blue is gorgeous. So comfortable for napping.',
        rating: 5.0,
      ),
      ReviewModel(
        reviewerName: 'Mazen S.',
        date: DateTime(2024, 3, 22),
        comment: 'Very modular. Love the corduroy texture.',
        rating: 4.5,
      ),
    ],
    createdAt: DateTime(2024, 4, 25),
  ),
];
