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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 20),

              // HEADER
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.menu),

                    const Text(
                      'GemStore',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const Icon(Icons.notifications_none),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // CATEGORII
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Category(
                      icon: Icons.female,
                      text: 'Women',
                    ),
                    Category(
                      icon: Icons.male,
                      text: 'Men',
                    ),
                    Category(
                      icon: Icons.remove_red_eye_outlined,
                      text: 'Accessories',
                    ),
                    Category(
                      icon: Icons.brush_outlined,
                      text: 'Beauty',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // AUTUMN COLLECTION
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    children: [

                      Image.asset(
                        'assets/images/1.png',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),

                      const Positioned(
                        right: 15,
                        top: 25,
                        child: Text(
                          'Autumn\nCollection\n2021',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // FEATURE PRODUCTS TITLE
              const SectionTitle(
                title: 'Feature Products',
              ),

              const SizedBox(height: 15),

              // FEATURE PRODUCTS
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductPage(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/2.png',
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),

              const SizedBox(height: 25),

              // HANG OUT
              Image.asset(
                'assets/images/3.png',
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),

              const SizedBox(height: 30),

              // RECOMMENDED
              const SectionTitle(
                title: 'Recommended',
              ),

              const SizedBox(height: 15),

              Image.asset(
                'assets/images/4.png',
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),

              const SizedBox(height: 30),

              // TOP COLLECTION
              const SectionTitle(
                title: 'Top Collection',
              ),

              const SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(
                  'assets/images/5.png',
                  width: double.infinity,
                ),
              ),

              const SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(
                  'assets/images/6.png',
                  width: double.infinity,
                ),
              ),

              const SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(
                  'assets/images/7.png',
                  width: double.infinity,
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

// PAGINA PRODUCT

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              // IMAGINEA MARE
              SizedBox(
                height: 420,
                child: Stack(
                  alignment: Alignment.center,
                  children: [

                    Container(
                      width: 260,
                      height: 260,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFF1EC),
                        shape: BoxShape.circle,
                      ),
                    ),

                    Image.asset(
                      'assets/images/8.png',
                      height: 400,
                    ),

                    Positioned(
                      top: 15,
                      left: 20,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                        ),
                      ),
                    ),

                    const Positioned(
                      top: 15,
                      right: 20,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.all(25),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // PRODUS + PRET
                    const Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sportwear Set',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),

                        Text(
                          '\$ 80.00',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      '★★★★★  (83)',
                      style: TextStyle(
                        color: Color(0xFF4E8E82),
                      ),
                    ),

                    const SizedBox(height: 25),
                    const Divider(),

                    // COLOR + SIZE
                    const Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Color'),
                        Text('Size'),
                      ],
                    ),

                    const SizedBox(height: 20),

                    Row(
                      children: [

                        circleColor(
                          const Color(0xFFEFC6AA),
                        ),

                        const SizedBox(width: 12),

                        circleColor(
                          Colors.black,
                        ),

                        const SizedBox(width: 12),

                        circleColor(
                          Colors.redAccent,
                        ),

                        const Spacer(),

                        sizeCircle('S'),
                        sizeCircle('M'),
                        sizeCircle('L', selected: true),
                      ],
                    ),

                    const SizedBox(height: 30),
                    const Divider(),

                    const Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Description',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    ),

                    const SizedBox(height: 20),

                    const Text(
                      'Sportswear is no longer under culture, it is no '
                          'longer indie or cobbled together as it once was. '
                          'Sport is fashion today. The top is oversized in '
                          'fit and style, may need to size down.',
                      style: TextStyle(
                        color: Colors.grey,
                        height: 1.5,
                        fontSize: 12,
                      ),
                    ),

                    const SizedBox(height: 25),
                    const Divider(),

                    const Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Reviews'),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // RATING
                    Image.asset(
                      'assets/images/9.png',
                      width: double.infinity,
                    ),

                    const SizedBox(height: 30),

                    // REVIEW 1
                    review(
                      'assets/images/10.png',
                      'Jennifer Rose',
                      '5m ago',
                      'I love it. Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
                    ),

                    const SizedBox(height: 30),

                    // REVIEW 2
                    review(
                      'assets/images/11.png',
                      'Kelly Rihana',
                      '9m ago',
                      'I\'m very happy with order, it was delivered on and good quality. Recommended!',
                    ),

                    const SizedBox(height: 30),

                    const Divider(),

                    const Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Similar Product',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // SIMILAR PRODUCTS
                    Image.asset(
                      'assets/images/12.png',
                      width: double.infinity,
                    ),

                    const SizedBox(height: 25),

                    // ADD TO CART
                    Image.asset(
                      'assets/images/13.png',
                      width: double.infinity,
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// CATEGORIE

class Category extends StatelessWidget {
  final IconData icon;
  final String text;

  const Category({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 22,
          backgroundColor: const Color(0xFFF5F5F5),
          child: Icon(
            icon,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style: const TextStyle(
            fontSize: 10,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

// TITLURI

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment:
        MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
            'Show all',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

Widget circleColor(Color color) {
  return Container(
    width: 28,
    height: 28,
    decoration: BoxDecoration(
      color: color,
      shape: BoxShape.circle,
    ),
  );
}

Widget sizeCircle(
    String text, {
      bool selected = false,
    }) {
  return Container(
    margin: const EdgeInsets.only(left: 8),
    width: 32,
    height: 32,
    decoration: BoxDecoration(
      color: selected
          ? Colors.grey.shade700
          : Colors.grey.shade100,
      shape: BoxShape.circle,
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          color: selected
              ? Colors.white
              : Colors.grey,
        ),
      ),
    ),
  );
}

Widget review(
    String image,
    String name,
    String time,
    String description,
    ) {
  return Column(
    children: [

      Row(
        children: [

          ClipOval(
            child: Image.asset(
              image,
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const Text(
                  '★★★★★',
                  style: TextStyle(
                    color: Color(0xFF4E8E82),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          Text(
            time,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 10,
            ),
          ),
        ],
      ),

      const SizedBox(height: 12),

      Text(
        description,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 11,
          height: 1.5,
        ),
      ),
    ],
  );
}