import 'dart:async';

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
  StreamController<Either<AppException, List<CatEntity>>> _debounceSearch =
      StreamController.broadcast();

  Timer? _debounceTimer;

  SearchCatsDelegate({required CatSearchCallback searchCallback})
      : _searchCallback = searchCallback;

  void clearStreams() {
    _debounceSearch.close();
  }

  void onQueryChange(String query) {
    if (_debounceTimer?.isActive ?? false) {
      _debounceTimer!.cancel();
    }
    _debounceTimer = Timer(
      const Duration(milliseconds: 100),
      () async {
        if (query.isEmpty) {
          _debounceSearch.add(
            Left(
              AppException(
                message: 'Query is empty',
                statusCode: 0,
                identifier: 'onQueryChange',
              ),
            ),
          );
        } else {
          final result = await _searchCallback(query: query);
          _debounceSearch.add(result);
        }
      },
    );
  }

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
        onPressed: () {
          clearStreams();
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    onQueryChange(query);

    return StreamBuilder(
      stream: _debounceSearch.stream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.hasError) {
          return const Center(
            child: Text('An error occurred'),
          );
        }
        final cats = snapshot.data;
        return cats!.fold(
          (failure) => Center(
            child: Text(failure.message),
          ),
          (data) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final cat = data[index];
                  return CatBreedCard(cat: cat);
                },
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    onQueryChange(query);

    return StreamBuilder(
      stream: _debounceSearch.stream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.hasError) {
          return const Center(
            child: Text('An error occurred'),
          );
        }
        final cats = snapshot.data;
        return cats!.fold(
          (failure) => Center(
            child: Text(failure.message),
          ),
          (data) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final cat = data[index];
                  return CatBreedCard(cat: cat);
                },
              ),
            );
          },
        );
      },
    );
  }
}
