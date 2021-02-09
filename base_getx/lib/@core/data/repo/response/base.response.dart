import 'package:base_getx/@core/data/repo/model/errorMessage.model.dart';
import 'package:base_getx/@core/data/repo/model/pagination.model.dart';

class BaseResponse {
  int status;
  int code;
  int isBlock;
  int isFirstLogin;
  bool success;
  String message;
  dynamic data;
  List<ErrorMessageModel> errors;
  PaginationModel pagination;

  BaseResponse(
      {this.status,
      this.success,
      this.message,
      this.data,
      this.isFirstLogin,
      this.isBlock,
      this.errors,
      this.code,
      this.pagination});

  factory BaseResponse.fromMap(Map<String, dynamic> map) {
    return new BaseResponse(
      status: map['status'] as int,
      code: map['code'] as int,
      isBlock: map['isBlock'] as int,
      isFirstLogin: map['isFirstLogin'] as int,
      success: map['success'] as bool,
      message: map['message'] as String,
      data: map['data'],
      errors: map['errors'] as List<ErrorMessageModel>,
      pagination: map['pagination'] as PaginationModel,
    );
  }

  Map<String, dynamic> toMap() => {
      'status': this.status,
      'code': this.code,
      'isBlock': this.isBlock,
      'isFirstLogin': this.isFirstLogin,
      'success': this.success,
      'message': this.message,
      'data': this.data,
      'errors': this.errors,
      'pagination': this.pagination,
    };

}
