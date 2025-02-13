import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:stihl_store/bloc/auth/auth_bloc.dart';
import 'package:stihl_store/themes/default.dart';

@RoutePage()
class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key, required this.phone, this.signup = false});
  final bool signup;
  final String phone;

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _authBloc = GetIt.I<AuthBloc>();
  String _code = '';
  int timerValue = 30;
  bool _isActive = false;
  late Timer t;

  void _runTimer() {
    if (!_isActive) {
      setState(() {
        _isActive = !_isActive;
        t = Timer.periodic(
          const Duration(seconds: 1),
          (timer) {
            setState(() {
              if (timerValue > 0) {
                timerValue--;
              } else {
                timer.cancel();
                timerValue = 30;
                _isActive = !_isActive;
              }
            });
          },
        );
      });
    }
  }

  @override
  void dispose() {
    setState(() {
      t.cancel();
    });
    super.dispose();
  }

  @override
  void initState() {
    _runTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.surface,
        leading: IconButton(
          onPressed: () {
            context.router.maybePop();
          },
          icon: const ImageIcon(
            AssetImage('icons/arrow_left.png'),
            size: 30,
          ),
        ),
        title: Text(
          widget.signup ? 'Регистрация' : 'Вход',
          style: theme.textTheme.displayLarge,
        ),
        centerTitle: true,
      ),
      body: BlocConsumer(
        bloc: _authBloc,
        builder: (context, state) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.only(
                top: 52,
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('images/logo.png'),
                  const SizedBox(height: 58),
                  !widget.signup ? Text(
                    'Вход в приложение Магазин Строитель',
                    style: theme.textTheme.titleLarge,
                  ) : const SizedBox(),
                  const SizedBox(height: 9),
                  SizedBox(
                    height: 29,
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          _code = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Код из смс',
                        hintStyle: theme.textTheme.headlineMedium,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        _runTimer();
                      },
                      child: Text(
                        'Отправить ещё раз через $timerValue секунд',
                        style: theme.textTheme.titleLarge?.copyWith(
                          color: theme.colorScheme.lightGrey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 31),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Неверный номер',
                      style: theme.textTheme.titleLarge?.copyWith(),
                    ),
                  ),
                  const SizedBox(height: 31),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        if (widget.signup) {
                          _authBloc.add(AuthConfirmSignUp(widget.phone, _code));
                        } else {
                          _authBloc.add(AuthResetPassword(email: widget.phone, code: _code));
                        }
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: theme.colorScheme.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                      child: Text(
                        widget.signup ? 'Подтвердить' : 'Продолжить',
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        listener: (context, state) {
          switch (state) {
            case AuthSuccess():
              print('NAVIGATE TO HOME');
              break;
            case AuthWaitingResetPassword():
              context.router.pushNamed('/change_password');
              break;
          }
        },
      ),
    );
  }
}
