import 'package:json_annotation/json_annotation.dart';
part 'bmobconfig.g.dart';

@JsonSerializable()
class BmobConfig {
  @JsonKey(name: 'application_id')
  final String applicationId;
  @JsonKey(name: 'rest_api_key')
  final String restApiKey;
  @JsonKey(name: 'secret_key')
  final String secretKey;
  @JsonKey(name: 'master_key')
  final String masterKey;

  BmobConfig(
      {this.applicationId, this.restApiKey, this.secretKey, this.masterKey});

  factory BmobConfig.fromJson(Map<String, dynamic> json) =>
      _$BmobConfigFromJson(json);

  Map<String, dynamic> toJson() => _$BmobConfigToJson(this);

  @override
  String toString() {
    return super.toString() +
        "{applicationId:$applicationId," +
        "restApiKey:$restApiKey," +
        "secretKey:$secretKey," +
        "masterKey:$masterKey}";
  }
}
