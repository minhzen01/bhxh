import 'package:flutter/material.dart';
import 'package:uibhxh/widget_logo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25)
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      color: Colors.deepPurple,
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 15),
                            child: Image.asset('screen/Ellipse.png'),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 65, left: 5),
                            alignment: Alignment.topRight,
                            child: const Text("Nguyễn Thanh Tùng", style: TextStyle(color: Colors.white, fontSize: 18)),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 145, bottom: 5),
                            child: const Icon(Icons.search, color: Colors.white, size: 30,)
                          )
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    padding: const EdgeInsets.only(top: 105, left: 15),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          width: 350,
                          height: 140,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          width: 350,
                          height: 140,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    children: const [
                      Widget_Logo(link: 'screen/bhxh.png', name: 'Tra cứu mã số BHXH'),
                      Widget_Logo(link: 'screen/tct.png', name: 'Tra cứu mã số thuế'),
                      Widget_Logo(link: 'screen/diemthi.png', name: 'Tra cứu điểm thi THPT'),
                      Widget_Logo(link: 'screen/chuyenmang.png', name: 'Tra cứu chuyển mạng giữ số'),
                    ],
                  ),
                  Row(
                    children: const [
                      Widget_Logo(link: 'screen/tracuoc.png', name: 'Tra cước điện thoại'),
                      Widget_Logo(link: 'screen/khaithongtin.png', name: 'Khai báo thông tin thuê bao'),
                      Widget_Logo(link: 'screen/tiemchung.png', name: 'Tiêm chủng'),
                      Widget_Logo(link: 'screen/Xemthem.png', name: 'Xem thêm'),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 35),
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('screen/Group.png'),
                  )
                ],
              ),
            ],
          ),
        )
    );
  }
}

