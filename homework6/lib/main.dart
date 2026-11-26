
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Магазин',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: const ShopPage(),
    );
  }
}

// Модель товара
class Product {
  final String name;
  final String category;
  final int price;
  final String imageUrl;

  const Product({
    required this.name,
    required this.category,
    required this.price,
    required this.imageUrl,
  });
}

// Экран магазина
class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  final List<Product> products = const [
    Product(
      name: 'Наушники',
      category: 'Электроника',
      price: 3500,
      imageUrl: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500',
    ),
    Product(
      name: 'Смарт-часы',
      category: 'Электроника',
      price: 5900,
      imageUrl: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500',
    ),
    Product(
      name: 'Кроссовки',
      category: 'Обувь',
      price: 4200,
      imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=500',
    ),
    Product(
      name: 'Рюкзак',
      category: 'Аксессуары',
      price: 2800,
      imageUrl: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=500',
    ),
    Product(
      name: 'Фотоаппарат',
      category: 'Электроника',
      price: 25000,
      imageUrl: 'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=500',
    ),
    Product(
      name: 'Очки',
      category: 'Аксессуары',
      price: 1800,
      imageUrl: 'https://images.unsplash.com/photo-1511499767150-a48a237f0083?w=500',
    ),
    Product(
      name: 'Кружка',
      category: 'Для дома',
      price: 450,
      imageUrl: 'https://images.unsplash.com/photo-1514228742587-6b1558fcca3d?w=500',
    ),
    Product(
      name: 'Ноутбук',
      category: 'Электроника',
      price: 65000,
      imageUrl: 'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=500',
    ),
    Product(
      name: 'Часы',
      category: 'Аксессуары',
      price: 7500,
      imageUrl: 'https://images.unsplash.com/photo-1524592094714-0f0654e20314?w=500',
    ),
    Product(
      name: 'Камера',
      category: 'Электроника',
      price: 32000,
      imageUrl: 'https://images.unsplash.com/photo-1502920917128-1aa500764cbd?w=500',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Магазин',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.shopping_cart_outlined, size: 28),
          ),
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 12),
            child: Text(
              'Каталог товаров',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ),

          // Сетка товаров
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 8,
              ),
              itemCount: products.length,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.68,
              ),
              itemBuilder: (context, index) {
                return ProductCard(product: products[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Карточка товара
class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.network(
                product.imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: double.infinity,
                    color: Colors.grey.shade300,
                    child: const Icon(
                      Icons.image_not_supported,
                      size: 40,
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            product.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            product.category,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Text(
                  '${product.price} сом',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Icon(
                Icons.favorite_border,
                size: 22,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
