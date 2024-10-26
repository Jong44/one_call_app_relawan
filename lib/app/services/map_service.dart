import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

class MapsService {
  Future getCurrentLocation(LatLng position) async {
    final googleKey = dotenv.env['GOOGLE_MAPS_API_KEY'];
    final stringPosition = '${position.latitude}%2C${position.longitude}';
    final url =
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=$stringPosition&key=$googleKey';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return {
        'status': 'success',
        'data': response.body,
      };
    } else {
      return {
        'status': 'error',
        'message': 'Failed to get current location',
        'data': url,
      };
    }
  }
}