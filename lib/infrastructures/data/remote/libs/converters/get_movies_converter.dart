import "dart:async";

import "package:chopper/chopper.dart";

import "package:shows_vault/domain/dtos/dtos.dart";

class GetMoviesConverter extends JsonConverter {
  const GetMoviesConverter();

  @override
  FutureOr<Response<T>> convertResponse<T, InnerT>(Response response) {
    final res =
        super.convertResponse(response) as Response<Map<String, dynamic>>;

    return res.copyWith(
      body: GetMoviesResponseDto.fromJson(res.body!),
    ) as Response<T>;
  }

  static FutureOr<Response<T>> responseFactory<T, InnerT>(Response response) =>
      const GetMoviesConverter().convertResponse<T, InnerT>(response);
}
