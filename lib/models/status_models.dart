class StatusModels {
  String? timestamp;
  String? errorCode;
  String? errorMessage;
  String? elapsed;
  int? creditCount;

  StatusModels({
    required this.timestamp,
    required this.errorCode,
    required this.errorMessage,
    required this.elapsed,
    required this.creditCount,
  });

  factory StatusModels.mapFromJson(Map<String, dynamic> mapFromJson) {
    return StatusModels(
      timestamp: mapFromJson['timestamp'],
      errorCode: mapFromJson['errorCode'],
      errorMessage: mapFromJson['errorMessage'],
      elapsed: mapFromJson['elapsed'],
      creditCount: mapFromJson['creditCount'],
    );
  }
}
