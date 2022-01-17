import 'package:flutter/material.dart';
import 'package:uibhxh/screen/history.dart';
import 'package:uibhxh/screen/home.dart';
import 'package:uibhxh/screen/noti.dart';
import 'package:uibhxh/screen/scan.dart';
import 'package:uibhxh/screen/user.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final screens = [
    const HomeScreen(),
    const HistoryScreen(),
    const ScanScreen(),
    const NotiScreen(),
    const UserScreen(),
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Image.asset('bottom/home.png'),
              label: "Trang chủ"
          ),
          BottomNavigationBarItem(
            icon: Image.asset("bottom/time.png"),
            label: 'Lịch sử',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("bottom/scan.png"),
            label: '_',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("bottom/noti.png"),
            label: 'Thông báo',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("bottom/account.png"),
            label: 'Tài khoản',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
