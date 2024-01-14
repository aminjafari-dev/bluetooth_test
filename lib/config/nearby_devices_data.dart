abstract class NearbyDevicesStatus<T> {
  final T? devices;
  final String? error;

  const NearbyDevicesStatus(this.devices, this.error);
}

class DeviceFound<T> extends NearbyDevicesStatus<T> {
  const DeviceFound(T? data) : super(data, null);
}

class NoDevice<T> extends NearbyDevicesStatus<T> {
  const NoDevice(String? error) : super(null, error);
}

