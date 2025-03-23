import 'package:flutter/material.dart';

class PageDetail extends StatefulWidget {
  const PageDetail({super.key});

  @override
  State<PageDetail> createState() => _PageDetailState();
}

class _PageDetailState extends State<PageDetail> {
  List<Map<String, dynamic>> listStaff = [
    {
      "nama": "Henry Itondo",
      "jabatan": "Math Teacher",
      "gambar": "gambar/d3.png",
    },
    {
      "nama": "Courtney Henry",
      "jabatan": "Supervisor",
      "gambar": "gambar/d2.png",
    },
    {
      "nama": "Darika Samak",
      "jabatan": "Admin",
      "gambar": "gambar/d2.png",
    },
    {
      "nama": "Em Assinder",
      "jabatan": "Class Teacher",
      "gambar": "gambar/d3.png",
    },
    {
      "nama": "Darika Samak",
      "jabatan": "Admin",
      "gambar": "gambar/d2.png",
    },
    {
      "nama": "Em Assinder",
      "jabatan": "Class Teacher",
      "gambar": "gambar/d3.png",
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // AppBar custom
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new, size: 20),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      // Search action
                    },
                  ),
                ],
              ),
            ),

            // User profile section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffFFF3D6),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage('gambar/d2.png'),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Lucas Wilson',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Thomas Jefferson High School',
                          style:
                          TextStyle(fontSize: 13, color: Colors.black54),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5CB58),
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Icon(Icons.sync, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 8),

            // Staff availability text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Staff available for Lucas Wilson',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),
              ),
            ),

            const SizedBox(height: 8),

            // Staff list
            Expanded(
              child: ListView.builder(
                itemCount: listStaff.length,
                itemBuilder: (context, index) {
                  final staff = listStaff[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(staff['gambar']),
                    ),
                    title: Text(
                      staff['nama'],
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(staff['jabatan']),
                    trailing: const Icon(Icons.call, color: Colors.blueAccent),
                    onTap: () {
                      // Action ketika klik staff
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}