import 'package:flutter/material.dart';
import '../widgets/summary_card.dart';

class Indonesia extends StatelessWidget {
  final double height;
  final data;

  Indonesia({this.height, this.data});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[

        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
          child: const Text(
            'LAPORAN JUMLAH KASUS DI INDONESIA',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        Divider(),

        Expanded(
          flex: 2,

          child: GridView.count(
            childAspectRatio: height / 350,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: <Widget>[

              SummaryCard(
                total: data.summary.confirmed.toString(),
                label: 'Terkonfirmasi',
                color: Colors.redAccent,
                size: 35,
              ),
              SummaryCard(
                total: data.summary.deaths.toString(),
                label: 'Meninggal',
                color: Colors.yellowAccent,
                size: 35,
              ),
              SummaryCard(
                total: data.summary.activeCare.toString(),
                label: 'Dalam Perawatan',
                color: Colors.blue,
                size: 35,
              ),
              SummaryCard(
                total: data.summary.recovered.toString(),
                label: 'Sembuh',
                color: Colors.green,
                size: 35,
              ),
            ],
          ),
        ),
      ],
    );
  }
}