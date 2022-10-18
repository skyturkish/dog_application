import 'package:dog_application/model/dog_model.dart';
import 'package:flutter/material.dart';

class DogDetailView extends StatelessWidget {
  const DogDetailView({super.key, required this.dog});

  // buraya gelen dog hangi dogu vermişlerse o geldi şu an
  // aşağıda da hangi dog gelmişse o bilgiler kullanılacak
  final Dog dog;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          dog.name,
        ),
      ),
      body: Card(
        child: Column(
          children: [
            Text(dog.name),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              width: double.infinity,
              child: Image.network(
                dog.photoUrl,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  dog.breed,
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(dog.age.toString(), style: Theme.of(context).textTheme.headline5),
              ],
            )
          ],
        ),
      ),
    );
  }
}
