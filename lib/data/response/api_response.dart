enum APIStatus {
  LOADING, // ignore: constant_identifier_names
  COMPLETED, // ignore: constant_identifier_names
  ERROR, // ignore: constant_identifier_names
}

class ApiResponse<T> {
  APIStatus? status;
  T? data;
  String? message;

  ApiResponse(this.status, this.data, this.message);

  ApiResponse.loading() : status = APIStatus.LOADING;
  ApiResponse.completed() : status = APIStatus.COMPLETED;
  ApiResponse.error() : status = APIStatus.ERROR;

  @override
  String toString() {
    return "Status : $status\nMessage : $message\nData : $data";
  }
}
