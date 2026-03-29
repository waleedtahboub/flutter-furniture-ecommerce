import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_status.freezed.dart';

@freezed
sealed class AuthStatus with _$AuthStatus {
  const factory AuthStatus.initial() = _Initial;
  const factory AuthStatus.loading() = _Loading;
  const factory AuthStatus.authenticated({required String username}) = _Authenticated;
  const factory AuthStatus.error(String message) = _Error;
}
