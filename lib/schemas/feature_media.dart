import 'links.dart';
import 'guid.dart';
import 'media.dart';

class WpFeaturedmediaEmbedded {
	int id;
	String date;
	String slug;
	String type;
	String link;
	Guid title;
	int author;
	Guid caption;
	String altText;
	String mediaType;
	String mimeType;
	MediaDetails mediaDetails;
	String sourceUrl;
	Links lLinks;

	WpFeaturedmediaEmbedded({this.id, this.date, this.slug, this.type, this.link, this.title, this.author, this.caption, this.altText, this.mediaType, this.mimeType, this.mediaDetails, this.sourceUrl, this.lLinks});

	WpFeaturedmediaEmbedded.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		date = json['date'];
		slug = json['slug'];
		type = json['type'];
		link = json['link'];
		title = json['title'] != null ? new Guid.fromJson(json['title']) : null;
		author = json['author'];
		caption = json['caption'] != null ? new Guid.fromJson(json['caption']) : null;
		altText = json['alt_text'];
		mediaType = json['media_type'];
		mimeType = json['mime_type'];
		mediaDetails = json['media_details'] != null ? new MediaDetails.fromJson(json['media_details']) : null;
		sourceUrl = json['source_url'];
		lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['date'] = this.date;
		data['slug'] = this.slug;
		data['type'] = this.type;
		data['link'] = this.link;
		if (this.title != null) {
      data['title'] = this.title.toJson();
    }
		data['author'] = this.author;
		if (this.caption != null) {
      data['caption'] = this.caption.toJson();
    }
		data['alt_text'] = this.altText;
		data['media_type'] = this.mediaType;
		data['mime_type'] = this.mimeType;
		if (this.mediaDetails != null) {
      data['media_details'] = this.mediaDetails.toJson();
    }
		data['source_url'] = this.sourceUrl;
		if (this.lLinks != null) {
      data['_links'] = this.lLinks.toJson();
    }
		return data;
	}
}

