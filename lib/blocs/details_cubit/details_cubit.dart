import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:funda_demo/domain/models/details.dart';
import 'package:funda_demo/domain/models/feed_item.dart';
import 'package:funda_demo/domain/repositories/repository_base.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  final RepositoryBase repository;

  DetailsCubit({required this.repository}) : super(DetailsInitial());

  Future<void> retrieve({required FeedItem object}) async {
    try {
      emit(DetailsLoadInProgress());
      final result = await repository.retrieveDetails(object);

      emit(DetailsLoadSuccess(object: result));
    } catch (e) {
      emit(DetailsLoadFailure(message: 'Details loading failed!'));
    }
  }
}
