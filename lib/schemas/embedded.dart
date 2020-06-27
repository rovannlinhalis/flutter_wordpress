import 'author.dart';
import 'feature_media.dart';
import 'term.dart';

class Embedded {
  List<Author> author;
  List<WpFeaturedmediaEmbedded> wpFeaturedmedia;
  List<WpTermList> wpTerm;

  Embedded({this.author, this.wpFeaturedmedia, this.wpTerm});

  Embedded.fromJson(Map<String, dynamic> json) {
    if (json['author'] != null) {
      author = new List<Author>();
      json['author'].forEach((v) {
        author.add(new Author.fromJson(v));
      });
    }
    if (json['wp:featuredmedia'] != null) {
      wpFeaturedmedia = new List<WpFeaturedmediaEmbedded>();
      json['wp:featuredmedia'].forEach((v) {
        wpFeaturedmedia.add(new WpFeaturedmediaEmbedded.fromJson(v));
      });
    }
    // if (json['wp:term'] != null) {
    //   wpTerm = new List<WpTermList>();
    //   json['wp:term'].forEach((v) {
    //     List<WpTerm> lt = new List<WpTerm>();
    //     lt.add(new WpTerm.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.author != null) {
      data['author'] = this.author.map((v) => v.toJson()).toList();
    }
    if (this.wpFeaturedmedia != null) {
      data['wp:featuredmedia'] =
          this.wpFeaturedmedia.map((v) => v.toJson()).toList();
    }
    if (this.wpTerm != null) {
      data['wp:term'] = this.wpTerm.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
