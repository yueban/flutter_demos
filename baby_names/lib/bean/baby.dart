import 'package:json_annotation/json_annotation.dart';
import 'package:data_plugin/bmob/table/bmob_object.dart';
//此处与类名一致，由指令自动生成代码
part 'baby.g.dart';

@JsonSerializable()
class Baby extends BmobObject {
  final String name;
  final int votes;
  Baby({this.name, this.votes});

  //此处与类名一致，由指令自动生成代码
  factory Baby.fromJson(Map<String, dynamic> json) => _$BabyFromJson(json);

  //此处与类名一致，由指令自动生成代码
  Map<String, dynamic> toJson() => _$BabyToJson(this);

  @override
  Map getParams() {
    return toJson();
  }

  @override
  String toString() => "Baby<$name:$votes>";

  @override
  bool operator ==(Object other) =>
      other != null && (other is Baby) && other.objectId == objectId;

  @override
  int get hashCode => objectId.hashCode;
}
