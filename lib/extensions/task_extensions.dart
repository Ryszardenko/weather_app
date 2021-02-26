import 'package:dartz/dartz.dart';
import 'package:weather_app/services/api_service.dart';

extension TaskExtensions<T extends Either<Object, U>, U> on Task<T> {
  Task<Either<Failure, U>> mapLeftToFailure() {
    return this.map(
      (a) => a.leftMap((obj) {
        try {
          return obj as Failure;
        } catch (e) {
          throw obj;
        }
      }),
    );
  }
}
