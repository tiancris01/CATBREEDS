import 'package:cat_breeds/features/cats/domain/entities/cat_entity.dart';
import 'package:flutter/material.dart';

class CatBreedCard extends StatelessWidget {
  const CatBreedCard({
    super.key,
    required this.cat,
  });

  final CatEntity cat;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Image.network(
            cat.imageUrl,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Container(
                height: 200,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          ListTile(
            title: Text(cat.catBreed),
            subtitle: Text("${cat.country} \n${cat.intelligence}"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // context.go('/breeds/${cat.id}');
            },
          ),
        ],
      ),
    );
  }
}
