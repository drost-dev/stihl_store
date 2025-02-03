import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stihl_store/router/app_router.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final categories = const [
    'Бензопилы',
    'Электропилы',
    'Газонокосилки',
    'Мотокосы/Электрокосы',
  ];

  final products = {
    0: {
      'image': 'images/product1.png',
      'title': 'МОЙКА RE 130 PLUS',
      'desc': 'Компактная мойка высокого давления',
      'price': '49 990р.',
    },
    1: {
      'image': 'images/product2.png',
      'title': 'Мотокоса FS ﻿38',
      'desc': 'Лёгкая мотокоса мощностью 0,65 кВт',
      'price': '17 990р.',
    },
    2: {
      'image': 'images/product3.png',
      'title': 'РУЧНОЙ ОПРЫСКИВАТЕЛЬ SG 11',
      'desc': 'Компактная мойка высокого давления',
      'price': '49 990р.',
    },
  };

  final catalogProducts = {
    0: {
      'image': 'images/catalog1.png',
      'title': 'ЭЛЕКТРОПИЛА MSE 250 C-Q',
      'desc': 'Самая мощная электропила STIHL',
      'price': '45 990р.',
    },
    1: {
      'image': 'images/catalog2.png',
      'title': 'ЭЛЕКТРОПИЛА MSE 170 C-Q',
      'desc': 'Лёгкая электропила на 1,7 кВт',
      'price': '23 990р.',
    },
    2: {
      'image': 'images/catalog3.png',
      'title': 'ЭЛЕКТРОПИЛА MSE 230 C-BQ',
      'desc':
          'Топ-модель: мощная электропила на 2,3 кВт с устройством быстрого натяжения цепи (B)',
      'price': '33 990р.',
    },
    3: {
      'image': 'images/catalog4.png',
      'title': 'ЭЛЕКТРОПИЛА MSE 210 C-BQ',
      'desc': 'Самая мощная электропила STIHL',
      'price': '45 990р.',
    },
  };

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 70),
        child: ColoredBox(
          color: theme.colorScheme.surface,
          child: Padding(
            padding: const EdgeInsets.only(top: 36, left: 20, right: 20),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    constraints:
                        const BoxConstraints(minHeight: 32, minWidth: 159),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Доставка курьером',
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: theme.colorScheme.primary,
                          ),
                        ),
                        Text(
                          'ул. Миклухо-Маклая, 55, Москва',
                          style: theme.textTheme.labelSmall,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned.fill(
                  left: 18,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: ImageIcon(
                      const AssetImage('icons/delivery.png'),
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 21, right: 21, bottom: 8, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    constraints:
                        const BoxConstraints(maxWidth: 287, maxHeight: 36),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surface,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 4,
                          offset: const Offset(1, 1),
                        ),
                      ],
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Поиск',
                        hintStyle: theme.textTheme.labelSmall?.copyWith(
                          color: const Color.fromRGBO(188, 188, 188, 1),
                        ),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 8),
                        prefixIcon: const SizedBox.square(
                          dimension: 10,
                          child: ImageIcon(
                            AssetImage('icons/search.png'),
                            color: Colors.black,
                          ),
                        ),
                      ),
                      style: theme.textTheme.labelSmall,
                    ),
                  ),
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: theme.colorScheme.surface,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 4,
                          offset: const Offset(1, 1),
                        ),
                      ],
                    ),
                    child: const ImageIcon(
                      AssetImage('icons/filters.png'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 53,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
              ),
              child: Center(
                child: Text(
                  'ХИТЫ ПРОДАЖ',
                  style: theme.textTheme.headlineSmall,
                ),
              ),
            ),
            const SizedBox(height: 13),
            Container(
              height: 199,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.separated(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 123,
                    height: 199,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: theme.colorScheme.surface,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 4,
                          offset: const Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 11),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              constraints: const BoxConstraints(maxHeight: 128),
                              alignment: Alignment.center,
                              child: Image.asset(
                                products[index]!['image']!,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 9,
                            left: 7,
                            right: 18,
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  products[index]!['title']!,
                                  softWrap: true,
                                  style: theme.textTheme.bodyLarge,
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  products[index]!['desc']!,
                                  softWrap: true,
                                  style: theme.textTheme.bodySmall,
                                ),
                                const SizedBox(height: 7),
                                SizedBox(
                                  height: 13,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        products[index]!['price']!,
                                        softWrap: true,
                                        style:
                                            theme.textTheme.bodyLarge?.copyWith(
                                          color: theme.colorScheme.primary,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          context.router
                                              .push(const ProductRoute());
                                        },
                                        child: Container(
                                          width: 59,
                                          height: 13,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(1),
                                            color: theme.colorScheme.primary,
                                          ),
                                          child: Text(
                                            'ПОДРОБНЕЕ О МОДЕЛИ',
                                            style: theme.textTheme.labelSmall
                                                ?.copyWith(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 3,
                                              height: 14 / 3,
                                              letterSpacing: 0,
                                              color: theme.colorScheme.surface,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned.fill(
                          top: 11,
                          right: 10,
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.primary,
                                shape: BoxShape.circle,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'ХИТ',
                                style: theme.textTheme.bodySmall?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: theme.colorScheme.surface,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 20);
                },
                itemCount: 3,
              ),
            ),
            const SizedBox(height: 19),
            Container(
              height: 53,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
              ),
              child: Center(
                child: Text(
                  'КАТАЛОГ STIHL',
                  style: theme.textTheme.headlineSmall,
                ),
              ),
            ),
            const SizedBox(height: 11),
            SingleChildScrollView(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 22,
                constraints: const BoxConstraints(minWidth: 392),
                margin: const EdgeInsets.only(left: 18),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 4,
                      offset: const Offset(1, 1),
                    ),
                  ],
                  color: theme.colorScheme.surface,
                  borderRadius: BorderRadius.circular(11),
                ),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Text(
                            categories[index],
                            style: theme.textTheme.labelMedium?.copyWith(
                              color: Colors.black,
                              height: 10 / 14,
                            ),
                          ),
                          _selectedIndex == index
                              ? Positioned.fill(
                                  bottom: -3,
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width: 16,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(1),
                                        color: theme.colorScheme.primary,
                                      ),
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 20);
                  },
                  itemCount: categories.length,
                ),
              ),
            ),
            const SizedBox(height: 13),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 22,
                    constraints: const BoxConstraints(minWidth: 166),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 4,
                          offset: const Offset(1, 1),
                        ),
                      ],
                      color: theme.colorScheme.surface,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(7.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'По популярности',
                          style: theme.textTheme.labelMedium?.copyWith(
                            color: Colors.black,
                            height: 10 / 14,
                          ),
                        ),
                        SizedBox(
                          width: 12,
                          height: 6,
                          child: ImageIcon(
                            const AssetImage('icons/arrow_down.png'),
                            color: Colors.black.withOpacity(0.85),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 17),
                  Container(
                    height: 22,
                    constraints: const BoxConstraints(minWidth: 166),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 4,
                          offset: const Offset(1, 1),
                        ),
                      ],
                      color: theme.colorScheme.surface,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(7.5),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 7,
                          height: 7,
                          child: ImageIcon(
                            const AssetImage('icons/filters.png'),
                            color: Colors.black.withOpacity(0.85),
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Фильтры',
                          style: theme.textTheme.labelMedium?.copyWith(
                            color: Colors.black,
                            height: 10 / 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 13),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 4,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 166,
                  childAspectRatio: 166 / 144,
                  mainAxisSpacing: 11,
                  crossAxisSpacing: 17,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: theme.colorScheme.surface,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 4,
                          offset: const Offset(1, 1),
                        ),
                      ],
                    ),
                    padding:
                        const EdgeInsets.only(bottom: 10, left: 7, right: 7),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          catalogProducts[index]!['image']!,
                          fit: BoxFit.fitWidth,
                        ),
                        const SizedBox(height: 22),
                        Text(
                          catalogProducts[index]!['title']!,
                          softWrap: true,
                          style: theme.textTheme.bodyLarge?.copyWith(
                            fontSize: 9,
                            height: 9 / 14,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          catalogProducts[index]!['desc']!,
                          softWrap: true,
                          style: theme.textTheme.bodySmall?.copyWith(
                            fontSize: 7,
                            height: 10 / 7,
                          ),
                        ),
                        const SizedBox(height: 7),
                        SizedBox(
                          height: 12,
                          width: 129,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                catalogProducts[index]!['price']!,
                                softWrap: true,
                                style: theme.textTheme.bodyLarge?.copyWith(
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.router.push(const ProductRoute());
                                },
                                child: Container(
                                  width: 90,
                                  height: 13,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1),
                                    color: theme.colorScheme.primary,
                                  ),
                                  child: Text(
                                    'ПОДРОБНЕЕ О МОДЕЛИ',
                                    style: theme.textTheme.bodyLarge?.copyWith(
                                      fontSize: 5,
                                      height: 5 / 14,
                                      letterSpacing: 0,
                                      color: theme.colorScheme.surface,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 18),
          ],
        ),
      ),
      drawerEdgeDragWidth: 180,
      drawerScrimColor: theme.colorScheme.primary.withOpacity(0.51),
      drawer: Drawer(
        backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        width: 180,
        child: Padding(
          padding: const EdgeInsets.only(top: 45, left: 17, right: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.black,
                radius: 17,
              ),
              const SizedBox(height: 7),
              Text(
                'Дмитрий Комарницкий',
                style: theme.textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'id 847122',
                    style: theme.textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  const ImageIcon(
                    AssetImage('icons/copy.png'),
                    size: 10,
                  ),
                ],
              ),
              const SizedBox(height: 21),
              GestureDetector(
                onTap: () {
                  context.router.maybePop();
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ImageIcon(
                      const AssetImage('icons/home.png'),
                      color: theme.colorScheme.primary,
                    ),
                    const SizedBox(width: 14),
                    Text(
                      'Главное меню',
                      style: theme.textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  context.router.push(const ProfileRoute());
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ImageIcon(
                      const AssetImage('icons/profile.png'),
                      color: theme.colorScheme.primary,
                    ),
                    const SizedBox(width: 14),
                    Text(
                      'Мой профиль',
                      style: theme.textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  context.router.push(const CartRoute());
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ImageIcon(
                      const AssetImage('icons/cart.png'),
                      color: theme.colorScheme.primary,
                    ),
                    const SizedBox(width: 14),
                    Text(
                      'Корзина',
                      style: theme.textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  context.router.push(const SelectAddressRoute());
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ImageIcon(
                      const AssetImage('icons/location.png'),
                      color: theme.colorScheme.primary,
                    ),
                    const SizedBox(width: 14),
                    Text(
                      'Адрес',
                      style: theme.textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Divider(
                color: theme.colorScheme.primary.withOpacity(0.38),
                thickness: 1,
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  context.router.push(const SettingsRoute());
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ImageIcon(
                      const AssetImage('icons/filters.png'),
                      color: theme.colorScheme.primary,
                    ),
                    const SizedBox(width: 14),
                    Text(
                      'Настройки',
                      style: theme.textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  print('pressed button 6');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ImageIcon(
                      const AssetImage('icons/search_2x.png'),
                      color: theme.colorScheme.primary,
                    ),
                    const SizedBox(width: 14),
                    Text(
                      'Поиск',
                      style: theme.textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
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
