import 'author.dart';
import 'feature_media.dart';
import 'term.dart';

class Embedded {
  List<Author> author;
  List<WpFeaturedmedia> wpFeaturedmedia;
  List<List<WpTerm>> wpTerm;

  Embedded({this.author, this.wpFeaturedmedia, this.wpTerm});

  Embedded.fromJson(Map<String, dynamic> json) {
    if (json['author'] != null) {
      author = new List<Author>();
      json['author'].forEach((v) {
        author.add(new Author.fromJson(v));
      });
    }
    if (json['wp:featuredmedia'] != null) {
      wpFeaturedmedia = new List<WpFeaturedmedia>();
      json['wp:featuredmedia'].forEach((v) {
        wpFeaturedmedia.add(new WpFeaturedmedia.fromJson(v));
      });
    }
    if (json['wp:term'] != null) {
      wpTerm = new List<List<WpTerm>>();
      int i = 0;
      json['wp:term'].forEach((v) {
        List<WpTerm> lt = new List<WpTerm>();
        json['wp:term:' + i.toString()].forEach((vt) {
          lt.add(new WpTerm.fromJson(vt));
        });
        i++;
        wpTerm.add(lt);
      });
    }
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
      data['wp:term'] = this.wpTerm.map((v) => v.map((e) => e.toJson())).toList();
    }
    return data;
  }
}
