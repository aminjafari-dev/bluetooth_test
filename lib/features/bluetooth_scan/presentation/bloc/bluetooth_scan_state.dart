part of 'bluetooth_scan_bloc.dart';

class BluetoothScanState extends Equatable {
  final EventStatus<List> bluetoothScan;

  const BluetoothScanState({required this.bluetoothScan});

  @override
  List<Object> get props => [bluetoothScan];

  BluetoothScanState copyWith({EventStatus<List>? bluetoothScan}) {
    return BluetoothScanState(
      bluetoothScan: bluetoothScan ?? this.bluetoothScan,
    );
  }
}
