import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stihl_store/router/app_router.dart';

@RoutePage()
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.router.maybePop();
                    },
                    child: ImageIcon(
                      const AssetImage('icons/arrow_left.png'),
                      size: 15,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  Text(
                    'Корзина',
                    style: theme.textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ImageIcon(
                    const AssetImage('icons/trash_bin.png'),
                    size: 16,
                    color: theme.colorScheme.primary,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 11),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  constraints: const BoxConstraints(minHeight: 133),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: theme.colorScheme.surface,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 4,
                        offset: const Offset(1, 1),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 6,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            constraints: const BoxConstraints(
                                minHeight: 121, minWidth: 62),
                            child: SizedBox.shrink(
                              child: Image.asset(
                                'images/product1.png',
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          const SizedBox(width: 11),
                          Container(
                            constraints: const BoxConstraints(
                                minWidth: 126, maxWidth: 150),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'МОЙКА RE 130 PLUS',
                                  style: theme.textTheme.labelSmall?.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 13),
                                Text(
                                  'Мощная мойка высокого давления (135 бар) повышенной комфортности.',
                                  softWrap: true,
                                  style: theme.textTheme.labelSmall?.copyWith(
                                    fontSize: 8,
                                    height: (8 * 1.3) / 8,
                                  ),
                                ),
                                const SizedBox(height: 13),
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
                        ],
                      ),
                      Container(
                        width: 72,
                        height: 24,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.only(left: 8, right: 9),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '-',
                              style: theme.textTheme.titleSmall?.copyWith(
                                fontSize: 30,
                                height: 30 / (30 * 1.3),
                                color: theme.colorScheme.surface,
                              ),
                            ),
                            Text(
                              '1',
                              style: theme.textTheme.titleSmall?.copyWith(
                                fontSize: 10,
                                height: 10 / (10 * 1.3),
                                color: theme.colorScheme.surface,
                              ),
                            ),
                            Text(
                              '+',
                              style: theme.textTheme.titleSmall?.copyWith(
                                fontSize: 18,
                                height: 18 / (18 * 1.3),
                                color: theme.colorScheme.surface,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 20);
              },
              itemCount: 2,
            ),
            Divider(
              color: theme.colorScheme.primary.withOpacity(0.38),
              height: 31,
            ),
            Text(
              'Оформление заказа',
              style: theme.textTheme.labelSmall?.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 6),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(20)),
                color: theme.colorScheme.surface,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 4,
                    offset: const Offset(1, 1),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(16).copyWith(top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ImageIcon(
                            const AssetImage('icons/delivery.png'),
                            size: 16,
                            color: theme.colorScheme.primary,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'Выберите тип доставки',
                            style: theme.textTheme.headlineSmall?.copyWith(
                              fontSize: 8,
                              height: 8 / 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Container(
                        constraints: const BoxConstraints(minWidth: 90),
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 4,
                                offset: const Offset(1, 1),
                              )
                            ]),
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 7,
                        ),
                        child: Stack(
                          alignment: Alignment.centerRight,
                          fit: StackFit.passthrough,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 13),
                              child: Text(
                                'Курьером',
                                style: theme.textTheme.labelMedium?.copyWith(
                                  color: theme.colorScheme.surface,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: ImageIcon(
                                  const AssetImage('icons/arrow_down.png'),
                                  color: theme.colorScheme.surface,
                                  size: 6,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 9),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ImageIcon(
                            const AssetImage('icons/clocks.png'),
                            size: 16,
                            color: theme.colorScheme.primary,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'Выберите время и дату доставки',
                            style: theme.textTheme.headlineSmall?.copyWith(
                              fontSize: 8,
                              height: 8 / 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Container(
                            constraints: const BoxConstraints(minWidth: 73),
                            decoration: BoxDecoration(
                                color: theme.colorScheme.primary,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 4,
                                    offset: const Offset(1, 1),
                                  )
                                ]),
                            padding: const EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 7,
                            ),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              fit: StackFit.passthrough,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 13),
                                  child: Text(
                                    '12:00',
                                    style:
                                        theme.textTheme.labelMedium?.copyWith(
                                      color: theme.colorScheme.surface,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: ImageIcon(
                                      const AssetImage('icons/arrow_down.png'),
                                      color: theme.colorScheme.surface,
                                      size: 6,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 13),
                          Container(
                            constraints: const BoxConstraints(minWidth: 98),
                            decoration: BoxDecoration(
                                color: theme.colorScheme.primary,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 4,
                                    offset: const Offset(1, 1),
                                  )
                                ]),
                            padding: const EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 7,
                            ),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              fit: StackFit.passthrough,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 13),
                                  child: Text(
                                    '05.09.2022',
                                    style:
                                        theme.textTheme.labelMedium?.copyWith(
                                      color: theme.colorScheme.surface,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: ImageIcon(
                                      const AssetImage('icons/arrow_down.png'),
                                      color: theme.colorScheme.surface,
                                      size: 6,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 9),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ImageIcon(
                            const AssetImage('icons/payment.png'),
                            size: 16,
                            color: theme.colorScheme.primary,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'Выберите способ оплаты',
                            style: theme.textTheme.headlineSmall?.copyWith(
                              fontSize: 8,
                              height: 8 / 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Container(
                        constraints: const BoxConstraints(minWidth: 122),
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 4,
                                offset: const Offset(1, 1),
                              )
                            ]),
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 7,
                        ),
                        child: Stack(
                          alignment: Alignment.centerRight,
                          fit: StackFit.passthrough,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 13),
                              child: Text(
                                'Банковская карта',
                                style: theme.textTheme.labelMedium?.copyWith(
                                  color: theme.colorScheme.surface,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: ImageIcon(
                                  const AssetImage('icons/arrow_down.png'),
                                  color: theme.colorScheme.surface,
                                  size: 6,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 22),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 184),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          constraints: const BoxConstraints(minHeight: 44),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '2 товара',
                                style: theme.textTheme.labelMedium?.copyWith(
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Доставка',
                                style: theme.textTheme.labelMedium?.copyWith(
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Начислим баллы',
                                style: theme.textTheme.labelMedium?.copyWith(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          constraints: const BoxConstraints(minHeight: 44),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '67 980р.',
                                style: theme.textTheme.labelMedium?.copyWith(
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                              Text(
                                'Бесплатно',
                                style: theme.textTheme.labelMedium?.copyWith(
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                              Text(
                                '679,8',
                                style: theme.textTheme.labelMedium?.copyWith(
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 41),
            GestureDetector(
              onTap: () {
                context.router.push(const PaymentRoute());
              },
              child: Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: theme.colorScheme.primary,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 4,
                      offset: const Offset(1, 1),
                    ),
                  ],
                ),
                alignment: Alignment.center,
                child: Text(
                  'Перейти к оплате',
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: theme.colorScheme.surface,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
