import 'package:cat_breeds/features/cats/domain/providers/breeds_providers.dart';
import 'package:cat_breeds/features/cats/presentation/widgets/cat_breeds_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BreedsScreen extends ConsumerWidget {
  static const name = 'Cat-breeds-screen';
  const BreedsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cats = ref.watch(catBreedsProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cat Breeds'),
      ),
      body: cats.when(
          data: (data) {
            return Padding(
              padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final cat = data[index];
                  return CatBreedCard(cat: cat);
                },
              ),
            );
          },
          error: (error, stackTrace) => Center(
                child: Text('Error: $error'),
              ),
          loading: () => const Center(
                child: CircularProgressIndicator(),
              )),
    );
  }
}
