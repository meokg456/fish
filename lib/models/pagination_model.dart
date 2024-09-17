import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_model.freezed.dart';

@freezed
class PaginationModel with _$PaginationModel {
  factory PaginationModel({
    @Default(1) int current,
    @Default(1) int total,
    @Default(20) int limit,
  }) = _PaginationModel;
}
