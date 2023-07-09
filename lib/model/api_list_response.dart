class ApiListResponse{
  String? status;
  int? statuscode;
  String? message;
  List<String>? location;

  ApiListResponse({this.status, this.statuscode, this.message, this.location});


  ApiListResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statuscode = json['statuscode'];
    message = json['message'];
    location = json['location'];
  }
}

class APIResponse<T> {
  final T? data;
  final bool? isError;
  final String? errorMessage;

  APIResponse({this.data, this.isError = false, this.errorMessage});
}