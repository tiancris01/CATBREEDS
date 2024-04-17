import 'package:cat_breeds/features/cats/domain/providers/breeds_providers.dart';
import 'package:cat_breeds/features/cats/presentation/providers/cat_breeds_sate_provider.dart';
import 'package:cat_breeds/features/cats/presentation/providers/state/cat_breeds_state.dart';
import 'package:cat_breeds/features/cats/presentation/widgets/cat_breeds_card.dart';
import 'package:cat_breeds/features/cats/presentation/widgets/custom_drawer.dart';
import 'package:cat_breeds/features/cats/presentation/widgets/delegates/search_cats_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BreedsScreen extends ConsumerStatefulWidget {
  static const name = 'Cat-breeds-screen';
  const BreedsScreen({super.key});

  @override
  ConsumerState<BreedsScreen> createState() => _BreedsScreenState();
}

class _BreedsScreenState extends ConsumerState<BreedsScreen> {
  late ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (scrollController.position.maxScrollExtent == scrollController.offset) {
      // When user reaches the end of the list
      final notifier = ref.read(catBreedsNotifierProvider.notifier);
      notifier.fetchCats();
    }
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cats = ref.watch(catBreedsNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cat Breeds'),
        centerTitle: true,
      ),
      drawer: CustomDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                final search = ref.read(catRepositoryImplProvider);
                showSearch(
                  context: context,
                  delegate: SearchCatsDelegate(
                    searchCallback: search.searchCats,
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Search...'),
                    Icon(Icons.search),
                  ],
                ),
              ),
            ),
          ),
          cats.state == ConcreteState.loading
              ? Expanded(
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : cats.hasdata
                  ? Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Expanded(
                              child: ListView.builder(
                                controller: scrollController,
                                itemCount: cats.catBreeds.length,
                                itemBuilder: (context, index) {
                                  final cat = cats.catBreeds[index];
                                  return CatBreedCard(cat: cat);
                                },
                              ),
                            ),
                            if (cats.state == ConcreteState.fetchingMore)
                              const Padding(
                                padding: EdgeInsets.only(bottom: 16.0),
                                child: CircularProgressIndicator(),
                              ),
                          ],
                        ),
                      ),
                    )
                  : Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22.0),
                        child: Text(
                          cats.errorMessage,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
        ],
      ),
    );
  }
}
