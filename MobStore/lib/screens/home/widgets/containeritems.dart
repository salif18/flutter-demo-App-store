import 'package:flutter/material.dart';

class MyContainerItems extends StatelessWidget {
  MyContainerItems({super.key});

  final categories = [
    {
      "icon": Icons.track_changes_outlined,
      "color": const Color.fromARGB(255, 35, 141, 228),
      "title": "Arcade"
    },
    {
      "icon": Icons.sports_basketball_rounded,
      "color": const Color.fromARGB(255, 167, 54, 238),
      "title": "Basket"
    },
    {
      "icon": Icons.casino_outlined,
      "color": const Color.fromARGB(255, 35, 228, 67),
      "title": "Casino"
    },
    {
      "icon": Icons.sports_esports,
      "color": const Color.fromARGB(255, 228, 167, 35),
      "title": "Esports"
    },
    {
      "icon": Icons.drive_eta_rounded,
      "color": const Color.fromARGB(255, 228, 35, 35),
      "title": "Cars"
    },
  ];

  final data = [
    {"photo": "assets/images/logo1.jfif", "color": Colors.pinkAccent},
    {"photo": "assets/images/logo2.png", "color": Colors.blueGrey},
    {"photo": "assets/images/logo3.png", "color": Colors.amber}
  ];

  final newdata = [
    {
      "logo": "assets/images/logo1.jfif",
      "title": "Racing cars",
      "icon": Icons.star_rate_sharp,
      "numStart": 5
    },
    {
      "logo": "assets/images/logo2.png",
      "title": "Assassin gred",
      "icon": Icons.star_rate_sharp,
      "numStart": 4
    },
    {
      "logo": "assets/images/logo4.jfif",
      "title": "Street fighter",
      "icon": Icons.star_rate_sharp,
      "numStart": 3
    },
    {
      "logo": "assets/images/logo1.jfif",
      "title": "Zuma",
      "icon": Icons.star_rate_sharp,
      "numStart": 2
    },
    {
      "logo": "assets/images/logo3.png",
      "title": "Fruity",
      "icon": Icons.star_rate_sharp,
      "numStart": 1
    }
  ];

  List<Widget> buildStars(int value) {
    switch (value) {
      case 5:
        return List.generate(5,
            (index) => const Icon(Icons.star_rate_sharp, color: Colors.amber));
      case 4:
        return List.generate(4,
            (index) => const Icon(Icons.star_rate_sharp, color: Colors.amber));
      case 3:
        return List.generate(3,
            (index) => const Icon(Icons.star_rate_sharp, color: Colors.amber));
      case 2:
        return List.generate(2,
            (index) => const Icon(Icons.star_rate_sharp, color: Colors.amber));
      case 1:
        return List.generate(1,
            (index) => const Icon(Icons.star_rate_sharp, color: Colors.amber));
      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1200,
      padding: const EdgeInsets.symmetric(vertical: 40),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 140,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                final item = categories[index];
                return Column(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: item['color'] as Color,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        item['icon'] as IconData,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    Text(item['title'] as String),
                  ],
                );
              },
              separatorBuilder: ((BuildContext context, int index) =>
                  const SizedBox(
                    width: 33,
                  )),
              itemCount: categories.length,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Row(
              children: [
                Text(
                  'Popular games',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              itemBuilder: (BuildContext context, int index) {
                final item = data[index];
                return GestureDetector(
                  onTap: null,
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      width: 180,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Image.asset(
                          item['photo'] as String,
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: ((BuildContext context, int index) =>
                  const SizedBox(
                    width: 33,
                  )),
              itemCount: data.length,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Row(
              children: [
                Text(
                  'New Games',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: newdata.map((data) {
              return Container(
                height: 110,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.grey.withOpacity(0.2),
                      child: Image.asset(data['logo'] as String),
                    ),
                    Container(
                      width: 150,
                      height: 100,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['title'] as String,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: buildStars(data['numStart'] as int),
                          ),
                        ],
                      ),
                    ),
                    const ElevatedButton(
                      onPressed: null,
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 167, 54, 238)),
                      ),
                      child: Text(
                        'Installer',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400
                          ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
