import 'package:bloc/bloc.dart';
import 'package:bluetooth_test/config/event_status.dart';
import 'package:equatable/equatable.dart';

part 'bluetooth_scan_event.dart';
part 'bluetooth_scan_state.dart';

class BluetoothScanBloc extends Bloc<BluetoothScanEvent, BluetoothScanState> {
  BluetoothScanBloc()
      : super(BluetoothScanState(
          bluetoothScan: EventInitial(),
        )) {
    on<BluetoothScanEvent>((event, emit) {
      emit(state.copyWith(bluetoothScan: EventLoading()));
      
    });
  }
}
