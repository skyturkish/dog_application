import 'package:dog_application/constants/dogs.dart';
import 'package:flutter/material.dart';

import 'dog_detail_view.dart';

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
              child: Card(
                child: Column(
                  children: [
                    Text(dog.name),
                    // InkWell sayesinde tıkladığımız zaman etki olması özelliğini kazandırıyoruz
                    InkWell(
                      onTap: () {
                        // Navigatorla diğer sayfaya gidiyoruz ve giderken diğer sayfanın istediği köpeğide yolluyoruz
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              // buraya verdiğim dog 15.satırda index sayesinde o anki dog hangisi onu bularak verdik
                              return DogDetailView(dog: dog);
                            },
                          ),
                        );
                      },
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 3,
                        width: double.infinity,
                        child: Image.network(
                          dog.photoUrl,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
