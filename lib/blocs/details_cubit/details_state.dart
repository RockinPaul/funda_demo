part of 'details_cubit.dart';

abstract class DetailsState extends Equatable {
  const DetailsState();
}

class DetailsInitial extends DetailsState {
  @override
  List<Object> get props => [];
}

class DetailsLoadInProgress extends DetailsState {
  const DetailsLoadInProgress();

  @override
  List<Object> get props => [];
}

class DetailsLoadSuccess extends DetailsState {
  final Details object;

  const DetailsLoadSuccess({required this.object});

  @override
  List<Object?> get props => [object];
}

class DetailsLoadFailure extends DetailsState {
  final String message;

  const DetailsLoadFailure({required this.message});

  @override
  List<Object?> get props => [message];
}
