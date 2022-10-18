import 'package:dog_application/constants/dogs.dart';
import 'package:dog_application/widgets/dog_card.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          // kaç tane köpek varsa liste o kadar uzayacak
          itemCount: DogsConstants().dogs.length,
          itemBuilder: (context, index) {
            // burada o index'e karşılık gelen köpeği alıyoruz ve aşağıya veriyoruz
            final dog = DogsConstants().dogs[index];
            return Padding(
              padding: const EdgeInsets.all(24.0),
              child: DogCard(dog: dog),
            );
          }),
    );
  }
}
