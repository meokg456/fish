import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_progress_model.freezed.dart';

@freezed
class RequestProgressModel with _$RequestProgressModel {
  factory RequestProgressModel({
    @Default(0) int current,
    @Default(0) int total,
  }) = _RequestProgressModel;
}
