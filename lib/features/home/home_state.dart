// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class HomeState {
  int value;
  HomeState({
    required this.value,
  });
}

class InitialValueHomeState extends HomeState {
  InitialValueHomeState({required super.value});
}

class IncrementedValueSuccessHomeState extends HomeState {
  IncrementedValueSuccessHomeState({required super.value});
}

class DecrementedValueSuccessHomeState extends HomeState {
  DecrementedValueSuccessHomeState({required super.value});
}
