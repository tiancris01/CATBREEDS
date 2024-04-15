class Response {
  final dynamic data;
  final int statusCode;
  final String? statusMessage;

  Response({
    this.data,
    this.statusMessage,
    required this.statusCode,
  });

  @override
  String toString() {
    return 'statusCode=$statusCode\nstatusMessage=$statusMessage\n data=$data';
  }
}

// extension ResponseExtension on Response {
//   Right<AppException, Response> get toRight => Right(this);
// }
