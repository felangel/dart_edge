import 'package:freezed_annotation/freezed_annotation.dart';

import 'fetch_apis.dart';

part 'resource.freezed.dart';

@Freezed(
  copyWith: false,
  fromJson: false,
  toJson: false,
  when: FreezedWhenOptions(maybeWhen: false, whenOrNull: false),
  map: FreezedMapOptions.none,
)
class Resource with _$Resource {
  const factory Resource(String url) = UrlType;
  const factory Resource.uri(Uri uri) = UriType;
  const factory Resource.request(Request request) = RequestType;
}

String urlFromResource(Resource resource) {
  return resource.when(
    (url) => url,
    uri: (uri) => uri.toString(),
    request: (request) => 'todo',
  );
}
