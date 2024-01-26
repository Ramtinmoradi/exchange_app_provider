class ResponseModels<T> {
  late Status status;
  late T data;
  late String message;

  ResponseModels.loading(this.message) : status = Status.LOADING;
  ResponseModels.completed(this.data) : status = Status.COMPLETED;
  ResponseModels.error(this.message) : status = Status.ERROR;

  @override
  String toString() {
    return 'Status: $status .\n Messages: $message .\n Data: $data .\n';
  }
}

enum Status { LOADING, COMPLETED, ERROR }
