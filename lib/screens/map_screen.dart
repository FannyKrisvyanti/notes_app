import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});
  static const String ACCESS_TOKEN =
      "pk.eyJ1IjoibnVycmFjaG1hdCIsImEiOiJjbHc4d2sydXAyOW5yMmlsOHkzY2puc29vIn0.e7D7h_-ElCLP3oWOS2B2vg";
  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
          options: const MapOptions(
            initialCenter: LatLng(39.920740, 32.854072),
            initialZoom: 5,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.notes',
            ),
            const MarkerLayer(markers: [
              Marker(
                point: LatLng(30, 40),
                child: Icon(
                  Icons.location_city,
                  color: Colors.red,
                ),
              ),
            ])
          ]),
    );
  }
}
