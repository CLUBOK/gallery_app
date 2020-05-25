import 'package:galleryapp/protocol/user.dart';






class PictureObj {
  String id;
  int width;
  int height;
  String color;
  String description;
  String altDescription;
  Urls urls;
  User user;

  PictureObj(
      {this.id,
        this.width,
        this.height,
        this.color,
        this.description,
        this.altDescription,
        this.urls,
        this.user});

  PictureObj.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    width = json['width'];
    height = json['height'];
    color = json['color'];
    description = json['description'];
    altDescription = json['alt_description'];
    urls = json['urls'] != null ? new Urls.fromJson(json['urls']) : null;
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['width'] = this.width;
    data['height'] = this.height;
    data['color'] = this.color;
    data['description'] = this.description;
    data['alt_description'] = this.altDescription;
    if (this.urls != null) {
      data['urls'] = this.urls.toJson();
    }
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return 'PictureObj{description: $description, altDescription: $altDescription}';
  }
}

class Urls {
  String raw;
  String full;
  String regular;
  String small;
  String thumb;

  Urls({this.raw, this.full, this.regular, this.small, this.thumb});

  Urls.fromJson(Map<String, dynamic> json) {
    raw = json['raw'];
    full = json['full'];
    regular = json['regular'];
    small = json['small'];
    thumb = json['thumb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['raw'] = this.raw;
    data['full'] = this.full;
    data['regular'] = this.regular;
    data['small'] = this.small;
    data['thumb'] = this.thumb;
    return data;
  }
}










/*
{
    "id": "m6OZNfmo2Dk",
    "created_at": "2020-05-06T12:55:02-04:00",
    "updated_at": "2020-05-21T01:02:27-04:00",
    "promoted_at": "2020-05-08T04:51:01-04:00",
    "width": 4536,
    "height": 7104,
    "color": "#FDF6E5",
    "description": "SWAB TEST.\r\nPatient and medical supervisor preparing for a COVID-19 nasal swab test. Image created by Russell Tate. Submitted for United Nations Global Call Out To Creatives - help stop the spread of COVID-19.",
    "alt_description": "COVID-19 Swab Test",
    "urls": {
        "raw": "https://images.unsplash.com/photo-1588783948922-d2f155b13c89?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjMyNDU2fQ",
        "full": "https://images.unsplash.com/photo-1588783948922-d2f155b13c89?ixlib=rb-1.2.1&q=85&fm=jpg&crop=entropy&cs=srgb&ixid=eyJhcHBfaWQiOjMyNDU2fQ",
        "regular": "https://images.unsplash.com/photo-1588783948922-d2f155b13c89?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjMyNDU2fQ",
        "small": "https://images.unsplash.com/photo-1588783948922-d2f155b13c89?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjMyNDU2fQ",
        "thumb": "https://images.unsplash.com/photo-1588783948922-d2f155b13c89?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max&ixid=eyJhcHBfaWQiOjMyNDU2fQ"
    },
    "links": {
        "self": "https://api.unsplash.com/photos/m6OZNfmo2Dk",
        "html": "https://unsplash.com/photos/m6OZNfmo2Dk",
        "download": "https://unsplash.com/photos/m6OZNfmo2Dk/download",
        "download_location": "https://api.unsplash.com/photos/m6OZNfmo2Dk/download"
    },
    "categories": [],
    "likes": 243,
    "liked_by_user": false,
    "current_user_collections": [],
    "sponsorship": {
        "impression_urls": [],
        "tagline": "PSA: Know the Symptoms ",
        "tagline_url": null,
        "sponsor": {
            "id": "6jqNp9PFt-8",
            "updated_at": "2020-05-22T06:19:40-04:00",
            "username": "unitednations",
            "name": "United Nations COVID-19 Response",
            "first_name": "United Nations",
            "last_name": "COVID-19 Response",
            "twitter_username": "un",
            "portfolio_url": "https://unitednations.talenthouse.com/",
            "bio": "To educate, uplift, and inspire people all across the world through the global COVID pandemic crisis, this library of artwork was donated by creators in response to the UN’s Open Brief thanks to the generosity of the creative community.",
            "location": null,
            "links": {
                "self": "https://api.unsplash.com/users/unitednations",
                "html": "https://unsplash.com/@unitednations",
                "photos": "https://api.unsplash.com/users/unitednations/photos",
                "likes": "https://api.unsplash.com/users/unitednations/likes",
                "portfolio": "https://api.unsplash.com/users/unitednations/portfolio",
                "following": "https://api.unsplash.com/users/unitednations/following",
                "followers": "https://api.unsplash.com/users/unitednations/followers"
            },
            "profile_image": {
                "small": "https://images.unsplash.com/profile-1588813462016-9062fbdc756cimage?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=32&w=32",
                "medium": "https://images.unsplash.com/profile-1588813462016-9062fbdc756cimage?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=64&w=64",
                "large": "https://images.unsplash.com/profile-1588813462016-9062fbdc756cimage?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=128&w=128"
            },
            "instagram_username": "unitednations",
            "total_collections": 6,
            "total_likes": 0,
            "total_photos": 114,
            "accepted_tos": true
        }
    },
    "user": {
        "id": "6jqNp9PFt-8",
        "updated_at": "2020-05-22T06:19:40-04:00",
        "username": "unitednations",
        "name": "United Nations COVID-19 Response",
        "first_name": "United Nations",
        "last_name": "COVID-19 Response",
        "twitter_username": "un",
        "portfolio_url": "https://unitednations.talenthouse.com/",
        "bio": "To educate, uplift, and inspire people all across the world through the global COVID pandemic crisis, this library of artwork was donated by creators in response to the UN’s Open Brief thanks to the generosity of the creative community.",
        "location": null,
        "links": {
            "self": "https://api.unsplash.com/users/unitednations",
            "html": "https://unsplash.com/@unitednations",
            "photos": "https://api.unsplash.com/users/unitednations/photos",
            "likes": "https://api.unsplash.com/users/unitednations/likes",
            "portfolio": "https://api.unsplash.com/users/unitednations/portfolio",
            "following": "https://api.unsplash.com/users/unitednations/following",
            "followers": "https://api.unsplash.com/users/unitednations/followers"
        },
        "profile_image": {
            "small": "https://images.unsplash.com/profile-1588813462016-9062fbdc756cimage?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=32&w=32",
            "medium": "https://images.unsplash.com/profile-1588813462016-9062fbdc756cimage?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=64&w=64",
            "large": "https://images.unsplash.com/profile-1588813462016-9062fbdc756cimage?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=128&w=128"
        },
        "instagram_username": "unitednations",
        "total_collections": 6,
        "total_likes": 0,
        "total_photos": 114,
        "accepted_tos": true
    }
}
*/