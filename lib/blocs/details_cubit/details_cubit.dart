import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:funda_demo/infrastructure/repositories/funda_object_repository.dart';
import 'package:funda_demo/domain/models/feed_object.dart';
import 'package:funda_demo/domain/repositories/funda_object_repository_base.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  late final FundaObjectRepositoryBase _repository;

  DetailsCubit({FundaObjectRepositoryBase? repository}) : super(DetailsInitial()) {
    _repository = repository ?? FundaObjectRepository();
  }

  Future<void> retrieve({required FeedObject object}) async {
    print('Call');
    try {
      emit(DetailsLoadInProgress());
      final result = await _repository.retrieveDetails(object);
      emit(DetailsLoadSuccess(object: result));
    } catch (e) {
      emit(DetailsLoadFailure(message: 'Details loading failed!'));
    }
  }
}
