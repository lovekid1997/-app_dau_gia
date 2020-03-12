import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:tyson/src/page_ui/donhang.dart';
import 'package:tyson/src/page_ui/hoso.dart';
import 'package:tyson/src/page_ui/phiendaugia.dart';
import 'package:tyson/src/theme/color.dart';

import 'dauiga.dart';
import 'giohang.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  int _page = 0;
  final PhienDauGia _phienDauGia = PhienDauGia();
  final DauGia _dauGia = new DauGia();
  final GioHang _gioHang = new GioHang();
  final DonHang _donHang = new DonHang();
  final HoSo _hoSo = new HoSo();

  Widget _showPage = new PhienDauGia();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _phienDauGia;
        break;
      case 1:
        return _dauGia;
        break;
      case 2:
        return _gioHang;
        break;
      case 3:
        return _donHang;
        break;
      case 4:
        return _hoSo;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget _icon(IconData icon, Color color) {
      return Icon(
        icon,
        color: color,
        size: 45,
      );
    }
    // TODO: implement build
    return Scaffold(
      body: _showPage,
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.blue[200],
//        animationCurve: Curves.bounceOut,
        animationDuration: Duration(milliseconds: 400),
        index: 0,
        items: <Widget>[
          _icon(CommunityMaterialIcons.hammer,
              !(_page == 0) ? Colors.black : Colors.deepOrange),
          _icon(CommunityMaterialIcons.checkbox_marked_circle,
              !(_page == 1) ? Colors.black : Colors.deepOrange),
          _icon(CommunityMaterialIcons.shopping,
              !(_page == 2) ? Colors.black : Colors.deepOrange),
          _icon(CommunityMaterialIcons.truck_delivery,
              !(_page == 3) ? Colors.black : Colors.deepOrange),
          _icon(CommunityMaterialIcons.nature_people,
              !(_page == 4) ? Colors.black : Colors.deepOrange),
        ],
        onTap: (index) {
          setState(() {
            _showPage = _pageChooser(index);
            _page = index;
          });
        },
      ),
    );
  }
}


