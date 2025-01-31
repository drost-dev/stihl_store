import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stihl_store/router/app_router.dart';

@RoutePage()
class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool _saveCard = true;

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
                    'Вернуться в корзину',
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
      body: Column(
        children: [
          Container(
            width: double.infinity,
            constraints: const BoxConstraints(minHeight: 66),
            padding: const EdgeInsets.symmetric(horizontal: 115, vertical: 16),
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
              'Для оплаты, укажите данные вашей карты',
              textAlign: TextAlign.center,
              style: theme.textTheme.titleLarge?.copyWith(
                fontSize: 12,
                height: 14 / 12,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 24, left: 20, right: 20, bottom: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('images/card.png'),
                      const SizedBox(height: 26),
                      SizedBox(
                        height: 41,
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(186, 186, 186, 1),
                                width: 0.5,
                              ),
                            ),
                            labelText: 'Введите имя которое указано на карте',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelStyle: theme.textTheme.labelMedium?.copyWith(
                              color: const Color.fromRGBO(140, 140, 140, 1),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 17),
                      SizedBox(
                        height: 41,
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(186, 186, 186, 1),
                                width: 0.5,
                              ),
                            ),
                            labelText: 'Введите номер карты',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelStyle: theme.textTheme.labelMedium?.copyWith(
                              color: const Color.fromRGBO(140, 140, 140, 1),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 17),
                      SizedBox(
                        height: 41,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: TextField(
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(3),
                                    borderSide: const BorderSide(
                                      color: Color.fromRGBO(186, 186, 186, 1),
                                      width: 0.5,
                                    ),
                                  ),
                                  labelText: 'Введите дату',
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  labelStyle:
                                      theme.textTheme.labelMedium?.copyWith(
                                    color:
                                        const Color.fromRGBO(140, 140, 140, 1),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 28),
                            Flexible(
                              child: TextField(
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(3),
                                    borderSide: const BorderSide(
                                      color: Color.fromRGBO(186, 186, 186, 1),
                                      width: 0.5,
                                    ),
                                  ),
                                  labelText: 'Введите CVC',
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  labelStyle:
                                      theme.textTheme.labelMedium?.copyWith(
                                    color:
                                        const Color.fromRGBO(140, 140, 140, 1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 17),
                      Container(
                        height: 45,
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 9,
                          left: 9,
                          right: 19,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(237, 237, 237, 1),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Запомнить карту',
                              style: theme.textTheme.titleSmall?.copyWith(
                                fontSize: 18,
                                height: 18 / 14,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 50,
                              height: 24,
                              child: CupertinoSwitch(
                                thumbColor: theme.colorScheme.surface,
                                activeColor: theme.colorScheme.primary,
                                value: _saveCard,
                                onChanged: (value) {
                                  setState(() {
                                    _saveCard = !_saveCard;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      context.router.push(const OrderRoute());
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
          ),
        ],
      ),
    );
  }
}
