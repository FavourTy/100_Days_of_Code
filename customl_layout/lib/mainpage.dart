import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Layouts",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.cloud_queue))
          ],
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            "assets/image3.jpg",
            fit: BoxFit.cover,
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "My Birthday",
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Divider(),
                const Text(
                  "It is going to be a great birthday. We are going out for dinner at my favourite place, then watch movie after we go to the gelateria for ice cream and espresso",
                  style: TextStyle(color: Colors.black),
                ),
                const Divider(), 
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.wb_sunny,
                          color: Colors.orange,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [Text("81º Clear")],
                        ),
                        Row(
                          children: [
                            Text(
                              "4500 San Alpho Drive, Dallas, TX United States",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                const Divider(),
                Wrap(
                  spacing: 8.0,
                  children: List.generate(7, (int index) {
                    return Chip(
                      label: Text("Gift ${index + 1}"),
                      avatar: const Icon(
                        Icons.card_giftcard,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        side: const BorderSide(color: Colors.grey),
                      ),
                      backgroundColor: Colors.grey,
                    );
                  }),
                ),
                const Divider(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.brown,
                      radius: 40.0,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 40.0,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.brown,
                      radius: 40.0,
                    ),
                    SizedBox(
                        width: 100.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(Icons.cake),
                            Icon(Icons.star_border),
                            Icon(Icons.music_note),
                            Icon(Icons.movie)
                          ],
                        )),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
