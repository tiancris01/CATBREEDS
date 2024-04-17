import 'package:animate_do/animate_do.dart';
import 'package:cat_breeds/features/cats/domain/entities/cat_entity.dart';
import 'package:cat_breeds/features/cats/presentation/widgets/cat_breeds_card.dart';
import 'package:cat_breeds/shared/exceptions/http_exception.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

typedef CatSearchCallback = Future<Either<AppException, List<CatEntity>>>
    Function({required String query});

class SearchCatsDelegate extends SearchDelegate<CatEntity?> {
  final CatSearchCallback _searchCallback;

  SearchCatsDelegate({required CatSearchCallback searchCallback})
      : _searchCallback = searchCallback;

  @override
  String get searchFieldLabel => 'Search cats';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      FadeIn(
        animate: query.isNotEmpty,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOutSine,
        child: IconButton(
          onPressed: () => query = '',
          icon: Icon(Icons.clear),
        ),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () => close(context, null),
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text('Results');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return FutureBuilder(
      future: _searchCallback(query: query),
      builder: (context, snapshot) {
        if (snapshot.data == null) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return snapshot.data!.fold(
            (l) => Text(l.message),
            (r) => ListView(
              children: r.map((cat) => CatBreedCard(cat: cat)).toList(),
            ),
          );
        }
      },
    );
  }
}
