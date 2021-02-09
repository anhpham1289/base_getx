import 'package:base_getx/@core/data/repo/model/workHistory.model.dart';

class UserInfoModel {
  int id;
  int totalEvaluatesLike;
  int totalComment;
  int totalMatching;
  int totalLikeMatching;
  String email;
  String areaName;
  String selfIntroduction;
  WorkHistoryModel workHistory;
  List<String> userLiked;
  String name;
  String birthday;
  String businessCardImg;
  String avatar;

  UserInfoModel(
      {this.id,
      this.totalEvaluatesLike,
      this.totalComment,
      this.totalMatching,
      this.totalLikeMatching,
      this.email,
      this.areaName,
      this.selfIntroduction,
      this.workHistory,
      this.userLiked,
      this.name,
      this.birthday,
      this.businessCardImg,
      this.avatar});

  factory UserInfoModel.fromMap(Map<String, dynamic> map) => UserInfoModel(
        id: map['id'] as int,
        totalEvaluatesLike: map['total_evaluates_like'] as int,
        totalComment: map['total_comment'] as int,
        totalMatching: map['total_matching'] as int,
        totalLikeMatching: map['total_like_matching'] as int,
        email: map['email'] as String,
        areaName: map['area_name'] as String,
        selfIntroduction: map['self_introduction'] as String,
        workHistory: WorkHistoryModel.fromMap(map['work_history']),
        userLiked: List.from(map['user_liked']),
        name: map['name'] as String,
        birthday: map['birthday'] as String,
        businessCardImg: map['business_card_img'] as String,
        avatar: map['avatar'] as String,
      );

  Map<String, dynamic> toMap() => {
        'id': this.id,
        'total_evaluates_like': this.totalEvaluatesLike,
        'total_comment': this.totalComment,
        'total_matching': this.totalMatching,
        'total_like_matching': this.totalLikeMatching,
        'email': this.email,
        'area_name': this.areaName,
        'self_introduction': this.selfIntroduction,
        'work_history': this.workHistory,
        'user_liked': this.userLiked,
        'name': this.name,
        'birthday': this.birthday,
        'business_card_img': this.businessCardImg,
        'avatar': this.avatar,
      };
}
