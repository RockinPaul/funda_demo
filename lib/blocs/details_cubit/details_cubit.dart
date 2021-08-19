import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:funda_demo/domain/models/details.dart';
import 'package:funda_demo/infrastructure/repositories/repository.dart';
import 'package:funda_demo/domain/models/feed_object.dart';
import 'package:funda_demo/domain/repositories/repository_base.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  late final RepositoryBase _repository;

  DetailsCubit({RepositoryBase? repository}) : super(DetailsInitial()) {
    _repository = repository ?? Repository();
  }

  Future<void> retrieve({required FeedObject object}) async {
    try {
      emit(DetailsLoadInProgress());
      final result = await _repository.retrieveDetails(object);
      emit(DetailsLoadSuccess(object: result));
    } catch (e) {
      emit(DetailsLoadFailure(message: 'Details loading failed!'));
    }
  }
}
