import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stihl_store/router/app_router.dart';

@RoutePage()
class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
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
                context.router.popUntilRoot();
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
                    'Вернуться в меню',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              constraints: const BoxConstraints(minHeight: 66),
              padding:
                  const EdgeInsets.symmetric(horizontal: 105, vertical: 16),
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
              alignment: Alignment.center,
              child: Text(
                'Заказ №73522.Оплата успешно произведена! Ожидайте звонка от курьера.',
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontSize: 12,
                  height: 14 / 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35, bottom: 50),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListView.separated(
                    padding: EdgeInsets.only(left: 20, right: 20),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'МОЙКА RE 130 PLUS',
                                        style: theme.textTheme.labelSmall
                                            ?.copyWith(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(height: 13),
                                      Text(
                                        'Мощная мойка высокого давления (135 бар) повышенной комфортности.',
                                        softWrap: true,
                                        style: theme.textTheme.labelSmall
                                            ?.copyWith(
                                          fontSize: 8,
                                          height: (8 * 1.3) / 8,
                                        ),
                                      ),
                                      const SizedBox(height: 13),
                                      Text(
                                        '49 990р.',
                                        style:
                                            theme.textTheme.bodyLarge?.copyWith(
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
                            Text(
                              'x1',
                              style: theme.textTheme.titleSmall?.copyWith(
                                fontSize: 20,
                                height: (20 * 1.3) / 20,
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
                  const SizedBox(height: 45),
                  Container(
                    height: 53,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                    ),
                    child: Center(
                      child: Text(
                        'РЕКОМЕНДУЕМ',
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
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
                          padding: const EdgeInsets.only(
                              bottom: 10, left: 7, right: 7),
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
                                    GestureDetector(
                                      onTap: () {
                                        context.router
                                            .push(const ProductRoute());
                                      },
                                      child: Container(
                                        width: 90,
                                        height: 13,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(1),
                                          color: theme.colorScheme.primary,
                                        ),
                                        child: Text(
                                          'ПОДРОБНЕЕ О МОДЕЛИ',
                                          style: theme.textTheme.bodyLarge
                                              ?.copyWith(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
