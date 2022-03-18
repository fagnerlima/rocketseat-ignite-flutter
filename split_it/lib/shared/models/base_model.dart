abstract class BaseModel {
  const BaseModel();

  Map<String, dynamic> toMap();

  BaseModel.fromMap(Map<String, dynamic> map);
}
