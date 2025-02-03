import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  final reviews = const {
    0: {
      'name': 'Дмитрий',
      'rating': 5,
      'text': 'Лучшая мойка, всем советую.',
    },
    1: {
      'name': 'Олег',
      'rating': 2,
      'text': 'Очень слабый напор. Возможно ojiswrebkjrswg Выше 2 не поставлю',
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
                    'Вернуться в каталог',
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontSize: 8,
                      height: 8 / 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Container(
              constraints: const BoxConstraints.expand(height: 258),
              child: Center(
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Image.asset(
                      'images/product1.png',
                      fit: BoxFit.fitHeight,
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'ХИТ',
                        style: theme.textTheme.labelMedium?.copyWith(
                          color: theme.colorScheme.surface,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 9),
            SizedBox(
              height: 10,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: index == 0
                          ? Colors.black
                          : const Color.fromRGBO(237, 237, 237, 1),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 4);
                },
                itemCount: 5,
              ),
            ),
            const SizedBox(height: 22),
            Container(
              width: double.infinity,
              constraints: const BoxConstraints(minHeight: 74),
              padding: const EdgeInsets.only(
                top: 19,
                bottom: 18,
                left: 20,
                right: 20,
              ),
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(28)),
                color: theme.colorScheme.surface,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(1, 1),
                    blurRadius: 4,
                    color: Colors.black.withOpacity(0.25),
                  ),
                ],
              ),
              child: Container(
                constraints: const BoxConstraints(minHeight: 37),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      constraints: const BoxConstraints(minWidth: 200),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'МОЙКА RE 130 PLUS',
                            style: theme.textTheme.bodyLarge?.copyWith(
                              fontSize: 12,
                              height: 12 / 14,
                            ),
                          ),
                          Text(
                            '49 990р.',
                            style: theme.textTheme.bodyLarge?.copyWith(
                              fontSize: 12,
                              height: 12 / 14,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      constraints: const BoxConstraints(minWidth: 200),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            constraints: const BoxConstraints(
                              minHeight: 12,
                              minWidth: 100,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1),
                              color: theme.colorScheme.primary,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'Добавить в корзину',
                              style: theme.textTheme.bodyLarge?.copyWith(
                                fontSize: 6,
                                height: 6 / 14,
                                color: theme.colorScheme.surface,
                              ),
                            ),
                          ),
                          Text(
                            'Подробнее о модели',
                            style: theme.textTheme.bodyLarge?.copyWith(
                              fontSize: 8,
                              height: 8 / 14,
                              fontWeight: FontWeight.w200,
                              color: theme.colorScheme.primary,
                              decoration: TextDecoration.underline,
                              decorationColor: theme.colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 17),
            Container(
              width: double.infinity,
              constraints: const BoxConstraints(minHeight: 74),
              padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 12),
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(28)),
                color: theme.colorScheme.surface,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(1, 1),
                    blurRadius: 4,
                    color: Colors.black.withOpacity(0.25),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Описание',
                    style: theme.textTheme.headlineLarge?.copyWith(
                      fontSize: 10,
                      height: 10 / 14,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    'Мощная мойка высокого давления (135 бар) повышенной комфортности. Алюминиевая головка насоса, тихий индукционный двигатель, встроенная тележка, роторная форсунка, регулируемая плоскоструйная форсунка, быстроразъемная муфта на пистолете-распылителе, предотвращающая перекручивание шланга.',
                    style: theme.textTheme.labelSmall?.copyWith(
                      fontSize: 12,
                      height: (12 * 1.3) / 12,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 17),
            Container(
              width: double.infinity,
              constraints: const BoxConstraints(minHeight: 74),
              padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 12),
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(28)),
                color: theme.colorScheme.surface,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(1, 1),
                    blurRadius: 4,
                    color: Colors.black.withOpacity(0.25),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Отзывы о товаре',
                    style: theme.textTheme.headlineLarge?.copyWith(
                      fontSize: 10,
                      height: 10 / 14,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    height: 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return SizedBox.square(
                              dimension: 15,
                              child: Image.asset('icons/star.png'),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(width: 3);
                          },
                          itemCount: 5,
                        ),
                        Text(
                          'Все отзывы',
                          style: theme.textTheme.headlineLarge?.copyWith(
                            fontSize: 10,
                            height: 10 / 14,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: theme.colorScheme.primary.withOpacity(0.38),
                    height: 17,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Text(
                          '4.9/5',
                          style: theme.textTheme.labelMedium?.copyWith(
                            color: theme.colorScheme.surface,
                          ),
                        ),
                      ),
                      const SizedBox(width: 9),
                      SizedBox(
                        height: 42,
                        width: 284,
                        child: ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                SizedBox.square(
                                  dimension: 6,
                                  child: Image.asset('icons/star.png'),
                                ),
                                const SizedBox(width: 2),
                                Text(
                                  '${5 - index}',
                                  style: theme.textTheme.bodySmall
                                      ?.copyWith(height: 5 / 14),
                                ),
                                const SizedBox(width: 7),
                                SizedBox(
                                  width: 265,
                                  child: LinearProgressIndicator(
                                    minHeight: 6,
                                    color: theme.colorScheme.primary,
                                    backgroundColor:
                                        const Color.fromRGBO(237, 237, 237, 1),
                                    borderRadius: const BorderRadius.horizontal(
                                      left: Radius.circular(0),
                                      right: Radius.circular(7),
                                    ),
                                    value: index == 0
                                        ? 0.96
                                        : index == 3
                                            ? 0.037
                                            : 0,
                                  ),
                                )
                              ],
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(height: 3);
                          },
                          itemCount: 5,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 67,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 218,
                          constraints: const BoxConstraints(
                            minHeight: 67,
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(237, 237, 237, 1),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                reviews[index]!['name']!.toString(),
                                style: theme.textTheme.bodyLarge?.copyWith(
                                  fontSize: 8,
                                  height: 14 / 8,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                                child: ListView.separated(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return SizedBox.square(
                                      dimension: 6,
                                      child: Image.asset('icons/star.png'),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(width: 2);
                                  },
                                  itemCount: int.parse(reviews[index]!['rating']!.toString()),
                                ),
                              ),
                              const SizedBox(height: 9),
                              Text(
                                reviews[index]!['text']!.toString(),
                                style: theme.textTheme.bodyLarge?.copyWith(
                                  fontSize: 8,
                                  height: 14 / (8*1.3),
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 10);
                      },
                      itemCount: 2,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
