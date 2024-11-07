import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:pivo_front/data/dto/auth_email_part1_request.dart';
import 'package:pivo_front/data/dto/auth_email_part2_request.dart';
import 'package:pivo_front/data/service/auth_service.dart';
import 'package:pivo_front/domain/entity/profile.dart';
import 'package:pivo_front/domain/use_case/profile_use_case.dart';
import 'package:pivo_front/internal/app_components.dart';
import 'package:pivo_front/util/snackbar_error_handler.dart';
import 'package:pivo_front/util/theme_provider.dart';
import 'package:rxdart/rxdart.dart';

import 'auth_page_model.dart';
import 'auth_page_widget.dart';

enum AuthState {
  phone,
  register,
  loadingRegister,
  loadingPhone,
  code;
}

abstract class IAuthPageWidgetModel implements IWidgetModel, IThemeProvider {
  TextEditingController get emailController;

  TextEditingController get codeController;

  TextEditingController get usernameController;

  AuthService get authService;

  Future<void> onSendCode();

  Future<void> onRegister();

  Future<void> confirmCode();

  BehaviorSubject<AuthState> get authStateController;
}

AuthPageWidgetModel defaultAuthPageWidgetModelFactory(BuildContext context) {
  return AuthPageWidgetModel(
    AuthPageModel(),
    AppComponents().profileUseCase,
  );
}

class AuthPageWidgetModel extends WidgetModel<AuthPageWidget, AuthPageModel>
    with ThemeProvider, SnackBarErrorHandlerMixin
    implements IAuthPageWidgetModel {
  final ProfileUseCase profileUseCase;
  @override
  final authStateController = BehaviorSubject.seeded(AuthState.phone);

  @override
  final emailController = TextEditingController();
  @override
  final usernameController = TextEditingController();

  @override
  AuthService authService = AppComponents().authService;

  @override
  TextEditingController codeController = TextEditingController();

  AuthPageWidgetModel(
    AuthPageModel model,
    this.profileUseCase,
  ) : super(model);

  @override
  Future<void> onSendCode() async {
    final email = emailController.text;
    if (email.isEmpty) {
      onErrorHandle(localizations.invalidEmail);
      return;
    }

    authStateController.add(AuthState.loadingPhone);
    try {
      await authService.authEmailPart1(
        request: AuthEmailPart1Request(
          email: email,
        ),
      );
      authStateController.add(AuthState.code);
    } on DioException catch (error) {
      authStateController.add(AuthState.register);
      throw Exception(
        error.response?.data['message'],
      );
    } catch (e) {
      onErrorHandle('Неизвестная ошибка');

      authStateController.add(AuthState.phone);

      rethrow;
    }
  }

  @override
  Future<void> confirmCode() async {
    final email = emailController.text;
    try {
      await authService.authEmailPart2(
        request: AuthEmailPart2Request(
          email: email,
          code: codeController.text,
        ),
      );
      final profile = await profileUseCase.loadProfile();

      final callback = widget.authCallback;
      // callback?.call(profile);
      if (callback == null) {
        router.popForced();
      }
    } on DioException catch (error) {
      onErrorHandle(localizations.invalidCode);

      throw Exception(
        error.response?.data['message'],
      );
    } catch (e) {
      if (isMounted) {
        // ignore: use_build_context_synchronously
        onErrorHandle('Неизвестная ошибка');
      }
      rethrow;
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    usernameController.dispose();
    codeController.dispose();
    authStateController.close();
    super.dispose();
  }

  @override
  Future<void> onRegister() async {
    final email = emailController.text;
    if (email.isEmpty) {
      onErrorHandle(localizations.invalidEmail);
      return;
    }

    final username = usernameController.text;
    if (username.isEmpty) {
      onErrorHandle(localizations.emptyUsername);
      return;
    }

    authStateController.add(AuthState.loadingRegister);
    try {
      await authService.register(
        profile: Profile(
          email: email,
          username: username,
        ),
      );
      authStateController.add(AuthState.code);
      print(authStateController.value);
    } on DioException catch (error) {
      authStateController.add(AuthState.register);
      throw Exception(
        error.response?.data['message'],
      );
    } catch (e) {
      onErrorHandle('Неизвестная ошибка');
      authStateController.add(AuthState.phone);

      rethrow;
    }
  }
}
