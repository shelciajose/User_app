
class SubCateInfoModel {
  int? id;
  String? name;
  String? cover;
  int? cateId;
  String? extraField;
  int? status;

  SubCateInfoModel(
      {this.id,
      this.name,
      this.cover,
      this.cateId,
      this.extraField,
      this.status});

  SubCateInfoModel.fromJson(Map<String, dynamic> json) {
    id = int.parse(json['id'].toString());
    name = json['name'];
    cover = json['cover'];
    cateId = int.parse(json['cate_id'].toString());
    extraField = json['extra_field'];
    status = int.parse(json['status'].toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['cover'] = cover;
    data['cate_id'] = cateId;
    data['extra_field'] = extraField;
    data['status'] = status;
    return data;
  }
}
