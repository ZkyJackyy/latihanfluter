import 'package:flutter/material.dart';
import 'package:latihanfluter/page/page_detail.dart';

class PageGrid extends StatefulWidget {
  const PageGrid({super.key});

  @override
  State<PageGrid> createState() => _PageGridState();
}

class _PageGridState extends State<PageGrid> {
  List<Map<String,dynamic>> listjob = [
    {"nama":"acounting", "gambar":"gambar/image 8.png","jam":"20 Courses"},
    {"nama":"Biology", "gambar":"gambar/124619001-microscope-test-tubes-and-atom-science-vector-illustration-removebg-preview 1.png","jam":"30 Courses"},
    {"nama":"Photography", "gambar":"gambar/image 7.png","jam":"20 Courses"},
    {"nama":"Marketing", "gambar":"gambar/UH14stzbXl4OZHrz-removebg-preview 1.png","jam":"10 Courses"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFBF2),
      body: SafeArea(
        child: Column(
          children: [
            // Header Kuning
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              decoration: const BoxDecoration(
                color: Color(0xffF5CB58),
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile Icon top right
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.notifications_none, color: Colors.red),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Hello,",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  const Text(
                    "good Morning",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),

                  // Search bar + Dropdown
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: Row(
                      children: [
                        const Icon(Icons.search, color: Colors.black54),
                        const SizedBox(width: 8),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFF3D6),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: const [
                              Text("All", style: TextStyle(color: Colors.black)),
                              Icon(Icons.arrow_drop_down, color: Colors.black),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Explore categories + See all
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  const Text(
                    "Explore categories",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text("See all",
                        style: TextStyle(color: Colors.blueAccent)),
                  )
                ],
              ),
            ),

            const SizedBox(height: 8),

            // Grid
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                  itemCount: listjob.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.85,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const PageDetail()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.orange.withOpacity(0.15),
                              blurRadius: 6,
                              offset: const Offset(0, 4),
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              listjob[index]["gambar"],
                              width: 90,
                              height: 90,
                            ),
                            const SizedBox(height: 12),
                            Text(
                              listjob[index]["nama"],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              listjob[index]["jam"],
                              style: const TextStyle(color: Colors.black54, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}