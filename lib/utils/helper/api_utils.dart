import 'package:dio/dio.dart' as dio_form_data;

dynamic addFormDataToJson({
  String fileKey = 'avatar',
  dynamic file,
  Map<String, dynamic>? jsonObject,
}) async {
  jsonObject![fileKey] = await dio_form_data.MultipartFile.fromFile(
    file.path,
    filename: file.path.split('/').last,
  );
  return dio_form_data.FormData.fromMap(jsonObject);
}
