import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dubble Combo'),
          centerTitle: true,
          backgroundColor: Colors.black12,

        ),
        body: ScrollablecardList(


          // Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7-IX308gl6uR62GKGJ13vVbxSNfNd1KEjSA&s');

        ),
      ),

    );
  }
}
class  ScrollablecardList extends StatelessWidget {
  // const ({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          width: 100,
          height: 200,

          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index){

              return Card(
                borderOnForeground: true,
                color: Colors.grey,
                margin: EdgeInsets.all(10),
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 100,width: 100,
                        child:  CircleAvatar(
                            backgroundImage: NetworkImage('data:image/png;base64,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'),
                            backgroundColor: Colors.black,

                          ),),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          const SizedBox(
                            height: 12,
                            width: 12,
                          ),
                          Text(('card Title ${index +1}'

                          ),
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),),

                          const SizedBox(
                            width: 10,
                          ),
                          Text('How are you${index +1}',
                          style: TextStyle(fontWeight: FontWeight.bold),),

                        ],
                      ),
                    ],
                  ),
                ),
              );



            }
          ),

        ),

        SizedBox(
          width: 300,
          height: 500,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 20,
              itemBuilder: (context, index){

                return Card(
                  // backgroundColor: Colors.black,

                  borderOnForeground: true,
                  color: Colors.grey,
                  margin: const EdgeInsets.all(10),
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,



                      children: [

                        const SizedBox(height: 100,width: 100,
                          child:  CircleAvatar(
                            backgroundImage: NetworkImage('https://tse1.mm.bing.net/th?id=OIP.9rhtIOIQ9u01uX9OWW4maQEsCo&pid=Api&P=0&h=180'

                            ),
                            backgroundColor: Colors.black,

                          ),),
                        Text(('card Title ${index +1}'
                        ),
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),),

                        const SizedBox(
                          width: 10,
                        ),
                        Text('How are you${index +1}',
                          style: const TextStyle(fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                );



              }
          ),

        ),
      ],
    );
  }
}



