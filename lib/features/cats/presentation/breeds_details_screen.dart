import 'package:cat_breeds/features/cats/domain/entities/cat_entity.dart';
import 'package:flutter/material.dart';

class BreedsDetails extends StatefulWidget {
  static const name = 'Details-screen';

  final CatEntity cat;

  const BreedsDetails({
    super.key,
    required this.cat,
  });

  @override
  State<BreedsDetails> createState() => _BreedsDetailsState();
}

class _BreedsDetailsState extends State<BreedsDetails> {
  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.cat.catBreed),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.network(
            widget.cat.imageUrl,
            height: 400,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Scrollbar(
              thumbVisibility: true,
              trackVisibility: true,
              thickness: 10,
              controller: scrollController,
              child: SingleChildScrollView(
                controller: scrollController,
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.cat.description,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 10),
                    Text('Country: ${widget.cat.country}'),
                    const SizedBox(height: 10),
                    Text('Intelligence: ${widget.cat.intelligence}'),
                    const SizedBox(height: 10),
                    Text('Adaptability:  ${widget.cat.adaptability}'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
