import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:spots/features/map/presentation/search_bottom_sheet.dart';
import 'package:spots/shared/themes/color_themes.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: const MapOptions(
              initialCenter:
                  LatLng(26.3184, -80.0996), // Deerfield Beach coordinates
              initialZoom: 15.0, // Adjust the zoom level as needed
            ),
            children: [
              TileLayer(
                urlTemplate:
                    'https://api.mapbox.com/styles/v1/jesse-bitglow/cm0vjvby500cv01pqbm4u6i5u/tiles/{z}/{x}/{y}?access_token={accessToken}',
                additionalOptions: const {
                  'accessToken':
                      'pk.eyJ1IjoiamVzc2UtYml0Z2xvdyIsImEiOiJjbTB2aXB5emswOXA3MnFvZDdpNWt6Y3ZkIn0.bpYBMNIzbJ0H3XxykwsRwA',
                },
                userAgentPackageName: 'dev.fleaflet.flutter_map.example',
                // Plenty of other options available!
              ),
            ],
          ),
          Positioned(
            top: 20,
            right: 20,
            child: SafeArea(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: ColorThemes.primary),
                height: 50,
                width: 50,
                child: const Icon(
                  Icons.person_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SearchBottomSheet()
        ],
      ),
    );
  }
}
