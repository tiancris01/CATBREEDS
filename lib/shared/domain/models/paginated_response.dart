const int PER_PAGE_LIMIT = 5;

class PaginatedResponse<T> {
  final int page;
  final List<T> data;
  static const limit = PER_PAGE_LIMIT;

  PaginatedResponse({
    required this.page,
    required this.data,
  });

  factory PaginatedResponse.fromJson(dynamic json, List<T> data) =>
      PaginatedResponse(
        page: json['page'] ?? 0,
        data: data,
      );

  @override
  String toString() {
    return 'PaginatedResponse(page:$page,  data:${data.length})';
  }
}
