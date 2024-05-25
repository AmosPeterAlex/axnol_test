// To parse this JSON data, do
//
//     final model = modelFromJson(jsonString);

import 'dart:convert';

Model modelFromJson(String str) => Model.fromJson(json.decode(str));

String modelToJson(Model data) => json.encode(data.toJson());

class Model {
    String? message;
    String? accessToken;
    User? user;

    Model({
        this.message,
        this.accessToken,
        this.user,
    });

    factory Model.fromJson(Map<String, dynamic> json) => Model(
        message: json["message"],
        accessToken: json["access_token"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "access_token": accessToken,
        "user": user?.toJson(),
    };
}

class User {
    int? id;
    String? fname;
    String? lname;
    dynamic dob;
    dynamic doa;
    String? mobile;
    String? email;
    String? address;
    dynamic marriedStatus;
    dynamic cityId;
    dynamic stateId;
    dynamic countryId;
    dynamic gender;
    dynamic pinCode;
    String? status;
    String? verified;
    dynamic userImg;
    String? role;
    dynamic emailVerifiedAt;
    String? detail;
    String? braintreeId;
    dynamic fbUrl;
    dynamic twitterUrl;
    dynamic youtubeUrl;
    dynamic linkedinUrl;
    dynamic preferPayMethod;
    dynamic paypalEmail;
    dynamic paytmMobile;
    dynamic bankAccName;
    dynamic bankAccNo;
    dynamic ifscCode;
    dynamic bankName;
    dynamic facebookId;
    dynamic googleId;
    dynamic amazonId;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic zoomEmail;
    dynamic jwtToken;
    dynamic gitlabId;
    dynamic linkedinId;
    dynamic twitterId;
    dynamic code;

    User({
        this.id,
        this.fname,
        this.lname,
        this.dob,
        this.doa,
        this.mobile,
        this.email,
        this.address,
        this.marriedStatus,
        this.cityId,
        this.stateId,
        this.countryId,
        this.gender,
        this.pinCode,
        this.status,
        this.verified,
        this.userImg,
        this.role,
        this.emailVerifiedAt,
        this.detail,
        this.braintreeId,
        this.fbUrl,
        this.twitterUrl,
        this.youtubeUrl,
        this.linkedinUrl,
        this.preferPayMethod,
        this.paypalEmail,
        this.paytmMobile,
        this.bankAccName,
        this.bankAccNo,
        this.ifscCode,
        this.bankName,
        this.facebookId,
        this.googleId,
        this.amazonId,
        this.createdAt,
        this.updatedAt,
        this.zoomEmail,
        this.jwtToken,
        this.gitlabId,
        this.linkedinId,
        this.twitterId,
        this.code,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        fname: json["fname"],
        lname: json["lname"],
        dob: json["dob"],
        doa: json["doa"],
        mobile: json["mobile"],
        email: json["email"],
        address: json["address"],
        marriedStatus: json["married_status"],
        cityId: json["city_id"],
        stateId: json["state_id"],
        countryId: json["country_id"],
        gender: json["gender"],
        pinCode: json["pin_code"],
        status: json["status"],
        verified: json["verified"],
        userImg: json["user_img"],
        role: json["role"],
        emailVerifiedAt: json["email_verified_at"],
        detail: json["detail"],
        braintreeId: json["braintree_id"],
        fbUrl: json["fb_url"],
        twitterUrl: json["twitter_url"],
        youtubeUrl: json["youtube_url"],
        linkedinUrl: json["linkedin_url"],
        preferPayMethod: json["prefer_pay_method"],
        paypalEmail: json["paypal_email"],
        paytmMobile: json["paytm_mobile"],
        bankAccName: json["bank_acc_name"],
        bankAccNo: json["bank_acc_no"],
        ifscCode: json["ifsc_code"],
        bankName: json["bank_name"],
        facebookId: json["facebook_id"],
        googleId: json["google_id"],
        amazonId: json["amazon_id"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        zoomEmail: json["zoom_email"],
        jwtToken: json["jwt_token"],
        gitlabId: json["gitlab_id"],
        linkedinId: json["linkedin_id"],
        twitterId: json["twitter_id"],
        code: json["code"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "fname": fname,
        "lname": lname,
        "dob": dob,
        "doa": doa,
        "mobile": mobile,
        "email": email,
        "address": address,
        "married_status": marriedStatus,
        "city_id": cityId,
        "state_id": stateId,
        "country_id": countryId,
        "gender": gender,
        "pin_code": pinCode,
        "status": status,
        "verified": verified,
        "user_img": userImg,
        "role": role,
        "email_verified_at": emailVerifiedAt,
        "detail": detail,
        "braintree_id": braintreeId,
        "fb_url": fbUrl,
        "twitter_url": twitterUrl,
        "youtube_url": youtubeUrl,
        "linkedin_url": linkedinUrl,
        "prefer_pay_method": preferPayMethod,
        "paypal_email": paypalEmail,
        "paytm_mobile": paytmMobile,
        "bank_acc_name": bankAccName,
        "bank_acc_no": bankAccNo,
        "ifsc_code": ifscCode,
        "bank_name": bankName,
        "facebook_id": facebookId,
        "google_id": googleId,
        "amazon_id": amazonId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "zoom_email": zoomEmail,
        "jwt_token": jwtToken,
        "gitlab_id": gitlabId,
        "linkedin_id": linkedinId,
        "twitter_id": twitterId,
        "code": code,
    };
}
