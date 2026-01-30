import 'package:flutter/material.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF32004B), // สีม่วงเข้มตาม Background
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // สร้างปุ่มตามรายการ A-E
              _buildMenuButton(
                text: 'Go to A Page',
                color: const Color(0xFFF8A2ED), // สีชมพู
                onPressed: () {},
              ),
              _buildMenuButton(
                text: 'Go to B Page',
                color: const Color(0xFF2346B8), // สีน้ำเงิน
                onPressed: () {},
              ),
              _buildMenuButton(
                text: 'Go to C Page',
                color: const Color(0xFF06B23C), // สีเขียว
                onPressed: () {},
              ),
              _buildMenuButton(
                text: 'Go to D Page',
                color: const Color(0xFF3CC6C1), // สีฟ้าเทอร์ควอยซ์
                onPressed: () {},
              ),
              _buildMenuButton(
                text: 'Go to E Page',
                color: const Color(0xFFF79E1B), // สีส้ม
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ฟังก์ชันสร้างปุ่มเพื่อลดความซ้ำซ้อนของโค้ด
  Widget _buildMenuButton({
    required String text,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0), // ระยะห่างระหว่างปุ่ม
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          minimumSize: const Size(double.infinity, 60), // ความสูงปุ่ม 60
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15), // ขอบโค้งมน
          ),
          elevation: 0, // ปิดเงาปุ่มให้แบนราบตามดีไซน์
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
