import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';


class MapController extends GetxController {
  late SharedPreferences prefs;
  late double latitude;
  late double longitude;
  var currentPosition = LatLng(0, 0).obs;
  var markerPosition = LatLng(0, 0).obs;
  final markers = <Marker>{};
  var address = ''.obs;
  

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    init();

  }
  void init() async {
    print('init');
    prefs = await SharedPreferences.getInstance();
    latitude = prefs.getDouble('latitude') ?? 0;
    longitude = prefs.getDouble('longitude') ?? 0;
    address.value = prefs.getString('address') ?? '';

    currentPosition.value = LatLng(latitude, longitude);
    markers.add(Marker(
      markerId: MarkerId('1'),
      position: LatLng(latitude, longitude),
    ));
    print('latitude: $latitude, longitude: $longitude, address: $address');
  }
}

void helping() {

}

// class MapsController extends GetxController {
//   final _googleApiKey = 'AIzaSyAWGOnzfAlD2vG5P7ul3TrMFTSlNrBdt7M';

  

//   String getMapsStaticUrl({
//     required double latitude,
//     required double longtitude,
//     required int zoomLevel,
//     required int width,
//     required int height,
//   }) {
//     return 'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longtitude&zoom=$zoomLevel&size=${width}x$height&key=$_googleApiKey';
//   }
// }
