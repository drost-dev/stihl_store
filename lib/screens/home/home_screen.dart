import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 115),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 36, left: 20, right: 20, bottom: 8),
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
                left: 40,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: ImageIcon(
                    const AssetImage('icons/delivery.png'),
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
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
                      padding: const EdgeInsets.symmetric(
                        vertical: 13,
                        horizontal: 14,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('icons/search.png'),
                          const SizedBox(width: 15),
                          SizedBox(
                            width: 234,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Поиск',
                                border: InputBorder.none,
                              ),
                              style: theme.textTheme.labelSmall,
                            ),
                          )
                        ],
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
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                            child: Image.asset('images/product1.png'),
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
                                  'МОЙКА RE 130 PLUS',
                                  softWrap: true,
                                  style: theme.textTheme.bodyLarge,
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  'Компактная мойка высокого давления',
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
                                        '49 990р.',
                                        softWrap: true,
                                        style:
                                            theme.textTheme.bodyLarge?.copyWith(
                                          color: theme.colorScheme.primary,
                                        ),
                                      ),
                                      Container(
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
                          'images/catalog1.png',
                          fit: BoxFit.fitWidth,
                        ),
                        const SizedBox(height: 22),
                        Text(
                          'ЭЛЕКТРОПИЛА MSE 250 C-Q',
                          softWrap: true,
                          style: theme.textTheme.bodyLarge?.copyWith(
                            fontSize: 9,
                            height: 9 / 14,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'Самая мощная электропила STIHL',
                          softWrap: true,
                          style: theme.textTheme.bodySmall?.copyWith(
                            fontSize: 7,
                            height: 10 / 7,
                          ),
                        ),
                        const SizedBox(height: 7),
                        SizedBox(
                          height: 13,
                          width: 129,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '49 990р.',
                                softWrap: true,
                                style: theme.textTheme.bodyLarge?.copyWith(
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                              Container(
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
      drawer: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        width: 180,

        child: Column(
          children: [
            DrawerButton(),
          ],
        ),
      ),
    );
  }
}
