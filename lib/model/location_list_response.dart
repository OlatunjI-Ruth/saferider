class LocationListResponse{
  String? status;
  int? statuscode;
  String? message;
  List<String>? location;

  LocationListResponse({this.status, this.statuscode, this.message, this.location});


  LocationListResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statuscode = json['statuscode'];
    message = json['message'];
    location = json['location'].cast<String>();
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
      data['status'] = status;
      data['statuscode'] = statuscode;
      data['message'] = message;
      data['location'] = location;
      return data;

  }
}
//
// class APIResponse<T> {
//   final T? data;
//   final bool? isError;
//   final String? errorMessage;
//
//   APIResponse({this.data, this.isError = false, this.errorMessage});
// }