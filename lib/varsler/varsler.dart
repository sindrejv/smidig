import 'package:flutter/material.dart';
import 'package:vy_test/layout/layout.dart';
import 'varsel.dart';
import 'package:intl/intl.dart';


class Varsler extends StatelessWidget {


  final List<Varsel> varselList = [
    Varsel(
        title: 'Forsinkelse',
        subtitle:
            'Det ble en forsinkelse grunnet avsporing av motgående tog. Venter på lyssignal.',
        catagoryIcon: Icon(Icons.access_time, color: Colors.orange),
        catagoryColor: Colors.orange,
        isDelayed: Icon(Icons.access_time)),
    Varsel(
        title: 'Farlig mann i vogn 2',
        subtitle:
            'Det ble en forsinkelse grunnet avsporing av motgående tog. Venter på lyssignal',
        catagoryIcon: Icon(Icons.warning, color: Colors.red),
        catagoryColor: Colors.orange),
    Varsel(
        title: 'Info',
        subtitle:
            'Det ble en forsinkelse grunnet avsporing av motgående tog. Venter på lyssignal',
        catagoryIcon: Icon(
          Icons.info,
          color: Colors.blue,
        ),
        catagoryColor: Colors.blue,),
    Varsel(
        title: 'Forsinkelse',
        subtitle:
            'Det ble en forsinkelse grunnet avsporing av motgående tog. Venter på lyssignal',
        catagoryIcon: Icon(Icons.access_time, color: Colors.orange),
        catagoryColor: Colors.orange),
    Varsel(
        title: 'Info',
        subtitle:
            'Det ble en forsinkelse grunnet avsporing av motgående tog. Venter på lyssignal',
        catagoryIcon: Icon(
          Icons.info,
          color: Colors.blue,
        ),
        catagoryColor: Colors.blue),
    Varsel(
        title: 'Forsinkelse',
        subtitle:
            'Det ble en forsinkelse grunnet avsporing av motgående tog. Venter på lyssignal',
        catagoryIcon: Icon(Icons.access_time, color: Colors.orange),
        catagoryColor: Colors.orange),
    Varsel(
        title: 'Forsinkelse',
        subtitle:
            'Det ble en forsinkelse grunnet avsporing av motgående tog. Venter på lyssignal',
        catagoryIcon: Icon(Icons.access_time, color: Colors.orange),
        catagoryColor: Colors.orange,
        userHasRead: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Layout(
        appBarText: 'Min reise',
        customBody: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.fromLTRB(0, 25, 250, 10),
                child: Text('Varsler',
                    style: TextStyle(fontSize: 30, wordSpacing: 5))),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: ListView.builder(
                    itemBuilder: listItem, itemCount: varselList.length),
              ),
            )
          ],
        ));
  }

  Widget listItem(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        //Side color
        Container(
          height: 62,
          width: 10,
          decoration: BoxDecoration(
              color: varselList[index].catagoryColor,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          margin: EdgeInsets.fromLTRB(1, 20, 0, 0),
        ),
        //Tile
        Container(
          //height: 100,
          margin: EdgeInsets.fromLTRB(5, 20, 0, 0),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1))
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: ExpansionTile(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(varselList[index].subtitle)),
              ],
              leading: varselList[index].catagoryIcon,
              title: Text(varselList[index].title),
              

              //  subtitle: Text(varselList[index].subtitle),
              // contentPadding: EdgeInsets.all(8),
              // onTap: (){},
            ),
          ),
        ),
      ],
    );
  }
}
