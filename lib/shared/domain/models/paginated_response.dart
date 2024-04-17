const int PER_PAGE_LIMIT = 5;

class PaginatedResponse<T> {
  final List<T> data;
  static const limit = PER_PAGE_LIMIT;

  PaginatedResponse({
    required this.data,
  });

  factory PaginatedResponse.fromJson(List<T> data) => PaginatedResponse(
        data: data,
      );

  @override
  String toString() {
    return 'PaginatedResponse( data:${data.length})';
  }
}
