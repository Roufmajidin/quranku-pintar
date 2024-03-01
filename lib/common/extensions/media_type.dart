import 'dart:io';

import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';

extension GetMediaType on File {
  MediaType? get mediaType {
    List<String> mimeType = lookupMimeType(path)?.split('/') ?? [];
    if (mimeType.isEmpty) return null;

    return MediaType(mimeType[0], mimeType[1]);
  }
}
