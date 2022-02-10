import 'dart:math';
import 'package:auth_repository/auth_repository.dart';
import 'package:cat_api_bloc/data/models/cat_model/cat_image.dart';
import 'package:cat_api_bloc/data/repositories/facts_repo.dart';
import 'package:cat_api_bloc/ui/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class CatDetailPage extends StatefulWidget {
  CatDetailPage({Key? key, required this.catImage}) : super(key: key);

  CatImage catImage;

  @override
  State<CatDetailPage> createState() => _CatDetailPageState();
}

class _CatDetailPageState extends State<CatDetailPage> {
  final FactsRepo factsRepo = FactsRepo();
  late List catFacts;
  late String factText;

  final authRepo = AuthenticationRepository();

  @override
  void initState() {
    _getRandomFact();
    super.initState();
  }

  Future<String> _getRandomFact() async {
    catFacts = await factsRepo.getFact();
    final random = Random();
    var element = random.nextInt(catFacts.length);
    String factText = catFacts[element];
    return factText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("The fact about the cat"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Hero(
                tag: widget.catImage.id,
                child: CustomListTile(catImage: widget.catImage)),
            const SizedBox(height: 50),
            FutureBuilder(
              future: _getRandomFact(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      snapshot.data.toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                }
                return const CircularProgressIndicator();
              },
            )
          ],
        ),
      ),
    );
  }
}
