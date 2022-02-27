import 'package:location/location.dart';

class GetLocation {
  Location location = new Location();
  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;
  // ignore: unused_field
  late LocationData _locationData;

  Future<LocationData?> getUserLocation() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return new LocationData.fromMap({});
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return new LocationData.fromMap({});
      }
    }
    return await location.getLocation();
  }
}
