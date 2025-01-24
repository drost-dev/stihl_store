import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:stihl_store/bloc/auth/auth_bloc.dart';
import 'package:stihl_store/router/app_router.dart';

@RoutePage()
class RestoreScreen extends StatefulWidget {
  const RestoreScreen({super.key});

  @override
  State<RestoreScreen> createState() => _RestoreScreenState();
}

class _RestoreScreenState extends State<RestoreScreen> {
  final _authBloc = GetIt.I<AuthBloc>();
  String _phone = '';

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
          'Вход',
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
                  Text(
                    'Вход в приложение Магазин Строитель',
                    style: theme.textTheme.titleLarge,
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 29,
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          _phone = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Номер мобильного телефона',
                        hintStyle: theme.textTheme.headlineMedium,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        _authBloc.add(AuthRequestPasswordReset(email: _phone));
                        },
                      style: TextButton.styleFrom(
                        backgroundColor: theme.colorScheme.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                      child: Text(
                        'Продолжить',
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
            case AuthWaitingResetPassword():
              context.router.push(OtpRoute(phone: _phone));
              break;
            case AuthError():
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                ),
              );
              break;
          }
        },
      ),
    );
  }
}
