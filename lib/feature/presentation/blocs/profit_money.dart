
import 'dart:async';

enum MoneyEvent { event_add, event_expence}

class ProfitMoney{
  double _amount = 0;

  final _inputEventController = StreamController<MoneyEvent>();
  StreamSink <MoneyEvent> get inputEventSink => _inputEventController.sink;

  final _outputStateController = StreamController<double>();
  Stream<double> get outputStateStream => _outputStateController.stream;

  void _mapEventToState(MoneyEvent event, double amount, double account) {
    if (event==MoneyEvent.event_add) {
      _amount = amount+account;
    } else if (event==MoneyEvent.event_expence) {
      _amount = account-account;
    } else {
      throw Exception ('wrong');
    }
    _outputStateController.sink.add(_amount);
  }
  ProfitMoney(){
    _inputEventController.stream.listen(_mapEventToState as void Function(MoneyEvent event)?);
  }
  void dispose (){
    _inputEventController.close();
    _outputStateController.close();
  }
}