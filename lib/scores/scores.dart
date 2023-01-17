import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Scores extends StatelessWidget {
  Scores({Key? key}) : super(key: key);

  final CollectionReference _categories =
  FirebaseFirestore.instance.collection('categories');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scores'),
      ),

      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [const Color(0xffA40FD9), Colors.deepOrange.shade300],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.2, 0.9])),
        child: Flexible(
            child: SizedBox(
              //height: 160,
              child: StreamBuilder(
                  stream: _categories.snapshots(),
                  builder: (context,
                      AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                    if (streamSnapshot.hasData) {
                      return ListView.builder(
                        primary: false,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        padding: const EdgeInsets.only(bottom: 10),

                        itemCount: streamSnapshot.data!.docs.length, //number of rows
                        itemBuilder: (context, index){
                          final DocumentSnapshot documentSnapshot = streamSnapshot.data!.docs[index];
                          final name = documentSnapshot['name'];
                          final score = documentSnapshot['score'].toString();
                          // final lname = documentSnapshot['last_name'];
                          return Card(
                            margin: const EdgeInsets.all(8),
                            child: ListTile(
                              // onTap: () => Get.to(() => PatientInfoView()),
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(name),
                                  Text(score)

                                  // Text(documentSnapshot['first_name']),
                                  // Text(documentSnapshot['last_name']),
                                ],
                              ),


                            ),
                          );
                        },
                        //   separatorBuilder: (context, index) =>
                        //     const SizedBox(
                        //   height: 10,
                        // ),
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }),
            )),
      ),
      bottomNavigationBar: InkWell(
        // onTap: () => Get.to(() => const HomepageView()),
        onTap: () {
          final docMicro = FirebaseFirestore.instance
              .collection('categories')
              .doc('pxx846JTJJN5ImtWMHij');
          final docEnzyme = FirebaseFirestore.instance
              .collection('categories')
              .doc('BmEsZpfG1Wqhw3NQT1jg');
          final docFoodHygiene = FirebaseFirestore.instance
              .collection('categories')
              .doc('cGzmHPHTABMQXIzpaug8');
          final docNutrition = FirebaseFirestore.instance
              .collection('categories')
              .doc('vskKiih0M74LasFKRowt');

          //update specific field
          docMicro.update({'score': 0});
          docEnzyme.update({'score': 0});
          docFoodHygiene.update({'score': 0});
          docNutrition.update({'score': 0});


          // Get.offAll(const HomepageView());
        },

        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 40,
            width: 20,
            decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadiusDirectional.circular(10)),
            child: const Center(
              child: Text(
                "RESET",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
