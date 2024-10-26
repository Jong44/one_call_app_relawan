import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocationController extends GetxController {
  late SharedPreferences prefs;
  LatLng currentPosition = const LatLng(0, 0);
  var isLoading = false.obs;
  var address = ''.obs;
  var isPermissionGranted = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getCurrentLocation();
    init();
  }

  void init() async {
    prefs = await SharedPreferences.getInstance();
  }

  Future<void> getCurrentLocation() async {
    isLoading.value = true;
    var status = await Permission.location.request();
    if (status.isGranted) {
      isPermissionGranted.value = true;

      // Get current location
      Position position = await Geolocator.getCurrentPosition(
          // ignore: deprecated_member_use
          desiredAccuracy: LocationAccuracy.high);
      currentPosition = LatLng(position.latitude, position.longitude);
      prefs.setDouble('latitude', position.latitude);
      prefs.setDouble('longitude', position.longitude);
      _getAddressFromLatLng(currentPosition);
    } else {
      isPermissionGranted.value = false;
    }
    isLoading.value = false;
  }

  void _getAddressFromLatLng(LatLng position) async {
    isLoading.value = true;
    final address =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    this.address.value = address.first.street.toString();
    prefs.setString('address', address.first.street.toString());
    isLoading.value = false;
  }
}
