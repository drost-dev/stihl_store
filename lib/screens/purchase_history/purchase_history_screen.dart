import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stihl_store/router/app_router.dart';

@RoutePage()
class PurchaseHistoryScreen extends StatelessWidget {
  const PurchaseHistoryScreen({super.key});

  final products = const {
    0: {
      'image': 'images/product1.png',
      'title': 'МОЙКА RE 130 PLUS',
      'desc': 'Компактная мойка высокого давления',
      'price': '49 990р.',
    },
    1: {
      'image': 'images/product2.png',
      'title': 'Мотокоса FS 38',
      'desc': 'Лёгкая мотокоса мощностью 0,65 кВт',
      'price': '17 990р.',
    },
  };

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
            child: GestureDetector(
              onTap: () {
                context.router.maybePop();
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ImageIcon(
                    const AssetImage('icons/arrow_left.png'),
                    size: 15,
                    color: theme.colorScheme.primary,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Вернуться в профиль',
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontSize: 10,
                      height: 10 / 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 19,
          left: 20,
          right: 20,
          bottom: 28,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'История покупок',
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 8),
            Text(
              '2 товара',
              style: theme.textTheme.labelMedium?.copyWith(
                color: Colors.black,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 19),
            SizedBox(
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 2,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 164,
                  childAspectRatio: 164 / 210,
                  mainAxisSpacing: 11,
                  crossAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    width: 164,
                    height: 210,
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
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 7,
                        bottom: 9,
                        left: 12,
                        right: 12,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            constraints: const BoxConstraints(maxHeight: 145),
                            child: Image.asset(
                              products[index]!['image']!,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            products[index]!['title']!,
                            softWrap: true,
                            style: theme.textTheme.bodyLarge,
                          ),
                          const SizedBox(height: 6),
                          Text(
                            products[index]!['desc']!,
                            softWrap: true,
                            style: theme.textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.normal,
                              height: 7 / 10,
                            ),
                          ),
                          const SizedBox(height: 7),
                          SizedBox(
                            height: 13,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  products[index]!['price']!,
                                  softWrap: true,
                                  style: theme.textTheme.bodyLarge?.copyWith(
                                    fontSize: 9,
                                    height: 9 / 14,
                                    color: theme.colorScheme.primary,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                GestureDetector(
                                  onTap: () {
                                    context.router.push(const ProductRoute());
                                  },
                                  child: Container(
                                    width: 77,
                                    height: 13,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1),
                                      color: theme.colorScheme.primary,
                                    ),
                                    child: Text(
                                      'ПОДРОБНЕЕ О МОДЕЛИ',
                                      style:
                                          theme.textTheme.labelSmall?.copyWith(
                                        fontWeight: FontWeight.w600,
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
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
