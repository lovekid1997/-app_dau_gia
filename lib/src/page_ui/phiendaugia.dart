import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

class PhienDauGia extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: new Text(
          "Kết thúc ngay",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            icon: Icon(
              CommunityMaterialIcons.menu,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () => _scaffoldKey.currentState.openDrawer()),
      ),
      body: new Column(
        children: <Widget>[
          new Container(

            child: new Row(
              children: <Widget>[
                new RaisedButton.icon(
                  onPressed: () => {},
                  icon: Icon(CommunityMaterialIcons.view_list),
                  label: new Text('zxczxc'),
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: <Color>[Colors.deepOrange, Colors.blue]),
              ),
            ),
            CustomListTile(CommunityMaterialIcons.timelapse, "KẾT THÚC NGAY",
                () => {}, Colors.black12, Colors.deepOrange),
            CustomListTile(CommunityMaterialIcons.shoe_heel, "Cho nàng",
                () => {}, Colors.white, Colors.black),
            CustomListTile(CommunityMaterialIcons.shoe_formal, "Cho chàng",
                () => {}, Colors.white, Colors.black),
            CustomListTile(CommunityMaterialIcons.home, "Nhà cửa và đời sống",
                () => {}, Colors.white, Colors.black),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  IconData _iconData;
  String text;
  Function ontap;
  Color colorBackgroundContainer;
  Color colorIcon;

  CustomListTile(this._iconData, this.text, this.ontap,
      this.colorBackgroundContainer, this.colorIcon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: new InkWell(
        splashColor: Colors.lightBlueAccent,
        onTap: ontap,
        child: new Container(
//          decoration: new BoxDecoration(
//            border: Border(
//              bottom: BorderSide(color :Colors.grey.shade400),
//            ),
//          ),
          color: colorBackgroundContainer,
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new Icon(_iconData, color: colorIcon, size: 35),
                  new SizedBox(
                    width: 7,
                  ),
                  new Text(
                    text,
                    style: new TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              new Icon(CommunityMaterialIcons.chevron_right, size: 30)
            ],
          ),
        ),
      ),
    );
  }
}
