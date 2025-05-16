import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart'; // import the flutter_map package
import 'package:latlong2/latlong.dart'; // for handling the coordinates
import 'package:google_fonts/google_fonts.dart'; // for custom fonts

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  // Initial coordinates for the map and marker (vehicle location)
  LatLng vehiclePosition = LatLng(18.5308,
      73.8526); // Initial position (can be updated based on sensor data)

  // Method to update vehicle's position
  void updateVehiclePosition(LatLng newPosition) {
    setState(() {
      vehiclePosition = newPosition;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff6616),
        title: const Text("Location"),
        titleTextStyle:
            GoogleFonts.orbitron(color: Colors.white, fontSize: 20.0),
      ),
      // Ensure that the map takes the full available space
      body: SizedBox.expand(
        // Ensures the map will take all available screen space
        child: FlutterMap(
          options: MapOptions(
            center: vehiclePosition, // Initial map center
            zoom: 13.0, // Initial zoom level
          ),
          children: [
            TileLayer(
              urlTemplate:
                  'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', // OpenStreetMap URL
              subdomains: ['a', 'b', 'c'], // Subdomains to load map tiles
              userAgentPackageName:
                  'com.example.app', // Add your package name here
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: vehiclePosition, // Vehicle's current position
                  builder: (ctx) => const Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Simulating a vehicle position change
          // This should be replaced by actual sensor data integration
          LatLng newVehiclePosition = LatLng(vehiclePosition.latitude + 0.01,
              vehiclePosition.longitude + 0.01);
          updateVehiclePosition(newVehiclePosition);
        },
        child: const Icon(Icons.update),
        backgroundColor: const Color(0xffff6616),
      ),
    );
  }
}
