import 'package:flutter/material.dart';
// import 'package:flutterdasar1/login_page/inbox.dart';
// import 'profile.dart';
// import 'school.dart';

class Home extends StatefulWidget {
  final String username;

  const Home({super.key, required this.username});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("My Siswa", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          // IconButton(
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => const Inbox()),
          //     );
          //   },
          //   icon: const Icon(Icons.notifications, color: Colors.cyanAccent),
          // ),
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // Sambutan
              Card(
                color: Colors.white10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                child: ListTile(
                  leading: const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("asset/profile.png"),
                  ),
                  title: Text(
                    "Assalamualaikum, ${widget.username} 👋",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: const Text(
                    "Semoga harimu menyenangkan",
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // Menu Sederhana (contoh aja pakai ListTile)
              Card(
                color: Colors.white10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                child: const ListTile(
                  leading: Icon(Icons.book, color: Colors.cyanAccent),
                  title: Text("Materi Belajar",
                      style: TextStyle(color: Colors.white)),
                  trailing:
                      Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white70),
                ),
              ),
              const SizedBox(height: 15),
              Card(
                color: Colors.white10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                child: const ListTile(
                  leading: Icon(Icons.assignment, color: Colors.orangeAccent),
                  title:
                      Text("Tugas & PR", style: TextStyle(color: Colors.white)),
                  trailing:
                      Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white70),
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.cyanAccent,
        child: const Icon(Icons.camera_alt, color: Colors.black),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        color: Colors.black.withOpacity(0.9),
        shape: const CircularNotchedRectangle(),
        notchMargin: 6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() => _currentIndex = 0);
              },
              icon: Icon(
                Icons.home,
                color: _currentIndex == 0 ? Colors.cyanAccent : Colors.white70,
              ),
            ),
            // IconButton(
            //   onPressed: () {
            //     setState(() => _currentIndex = 1);
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => const Profile()),
            //     );
            //   },
            //   icon: Icon(
            //     Icons.person,
            //     color: _currentIndex == 1 ? Colors.cyanAccent : Colors.white70,
            //   ),
            // ),
            // IconButton(
            //   onPressed: () {
            //     setState(() => _currentIndex = 2);
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => const School()),
            //     );
            //   },
            //   icon: Icon(
            //     Icons.school,
            //     color: _currentIndex == 2 ? Colors.cyanAccent : Colors.white70,
            //   ),
            // ),
            IconButton(
              onPressed: () {
                setState(() => _currentIndex = 3);
              },
              icon: Icon(
                Icons.calendar_month,
                color: _currentIndex == 3 ? Colors.cyanAccent : Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
