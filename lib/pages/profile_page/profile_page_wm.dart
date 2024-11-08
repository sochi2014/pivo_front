import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pivo_front/domain/entity/profile.dart';
import 'package:pivo_front/domain/use_case/profile_use_case.dart';
import 'package:pivo_front/internal/app_components.dart';
import 'package:pivo_front/util/value_stream_wrapper.dart';

import 'profile_page_model.dart';
import 'profile_page_widget.dart';

abstract interface class IProfilePageWidgetModel implements IWidgetModel {
  ValueStreamWrapper<Profile?> get profileStream;

  ValueListenable<bool> get authState;
}

ProfilePageWidgetModel defaultProfilePageWidgetModelFactory(
    BuildContext context) {
  return ProfilePageWidgetModel(
    model: ProfilePageModel(),
    profileUseCase: AppComponents().profileUseCase,
  );
}

// TODO: cover with documentation
/// Default widget model for ProfilePageWidget
class ProfilePageWidgetModel
    extends WidgetModel<ProfilePageWidget, ProfilePageModel>
    implements IProfilePageWidgetModel {
  final ProfileUseCase profileUseCase;

  @override
  ValueStreamWrapper<Profile?> get profileStream => profileUseCase.profile;

  @override
  ValueListenable<bool> get authState => profileUseCase.repository;

  ProfilePageWidgetModel({
    required ProfilePageModel model,
    required this.profileUseCase,
  }) : super(model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    profileUseCase.loadProfile();
  }
}
