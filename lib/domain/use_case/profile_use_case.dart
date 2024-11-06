
import 'package:pivo_front/data/repository/token_ropository.dart';
import 'package:pivo_front/data/service/auth_service.dart';
import 'package:pivo_front/domain/entity/profile.dart';
import 'package:pivo_front/util/lifecycle_component.dart';
import 'package:pivo_front/util/value_stream_wrapper.dart';

class ProfileUseCase implements LifecycleComponent {
  final TokenRepository repository;
  final AuthService authService;
  final ValueStreamWrapper<Profile?> profile = ValueStreamWrapper();

  ProfileUseCase(this.repository, this.authService);

  @override
  void dispose() {
    repository.removeListener(_listenTokenStatus);
    profile.dispose();
  }

  @override
  void init() {
    repository.addListener(_listenTokenStatus);
  }

  void _listenTokenStatus() {
    if (profile.valueOrNull != null && !repository.auth) {
      profile.add(null);
    } else {
      // loadProfile();
    }
  }

  Future<void> logout() async {
    await repository.deleteTokens();
    profile.add(null);
  }

  // Future<void> deleteAccount() async {
  //   await authService.deleteUser();
  //   await repository.deleteTokens();
  //   profile.add(null);
  // }

  Future<Profile> loadProfile() async {
    final result = await authService.getUser();
    profile.add(result);
    return result;
  }

  Future<void> patchProfile(Profile newProfile) async {
    final result = await authService.patchUser(request: newProfile);
    profile.add(result);
  }
}
