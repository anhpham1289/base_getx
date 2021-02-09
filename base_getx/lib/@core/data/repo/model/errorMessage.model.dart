class ErrorMessageModel {
  String field;
  String message;

  ErrorMessageModel({this.field, this.message});

  factory ErrorMessageModel.fromMap(Map<String, dynamic> map) =>
      ErrorMessageModel(
        field: map['field'] as String,
        message: map['message'] as String,
      );

  Map<String, dynamic> toMap() => {
        'field': this.field,
        'message': this.message,
      };
}
