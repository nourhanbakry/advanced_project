

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState<T> with _$SignUpState<T> {
  const factory SignUpState.signuoInitial() = _SignUpInitial;
  const factory SignUpState.signupLoading() = SignUpLoading;
  const factory SignUpState.signUpSuccess(T data) = SignUpSuccess<T>;
  const factory SignUpState.signUpFailure({required String message}) = SignUpFailure;
}
