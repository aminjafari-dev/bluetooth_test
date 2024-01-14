import 'package:bloc/bloc.dart';
import 'package:bluetooth_test/config/event_status.dart';
import 'package:bluetooth_test/features/bluetooth_scan/domain/usecases/bluetooth_scan_usecase.dart';
import 'package:equatable/equatable.dart';

part 'bluetooth_scan_event.dart';
part 'bluetooth_scan_state.dart';

class BluetoothScanBloc extends Bloc<BluetoothScanEvent, BluetoothScanState> {
  final BluetoothScanUsecase bluetoothScanUsecase = BluetoothScanUsecase();

  BluetoothScanBloc()
      : super(BluetoothScanState(
          bluetoothScan: EventInitial(),
        )) {
    on<BluetoothScanEvent>((event, emit) async {
      emit(state.copyWith(bluetoothScan: EventLoading()));
      await bluetoothScanUsecase.getNearbyDevices();
    });
  }
}
