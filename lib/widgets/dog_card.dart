import 'package:dog_application/model/dog_model.dart';
import 'package:dog_application/view/dog_detail_view.dart';
import 'package:flutter/material.dart';

class DogCard extends StatelessWidget {
  const DogCard({
    Key? key,
    required this.dog,
  }) : super(key: key);

  final Dog dog;

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
