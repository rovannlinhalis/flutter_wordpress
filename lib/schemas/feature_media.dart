import 'links.dart';
import 'guid.dart';

class WpFeaturedmedia {
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

	WpFeaturedmedia({this.id, this.date, this.slug, this.type, this.link, this.title, this.author, this.caption, this.altText, this.mediaType, this.mimeType, this.mediaDetails, this.sourceUrl, this.lLinks});

	WpFeaturedmedia.fromJson(Map<String, dynamic> json) {
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

class MediaDetails {
	int width;
	int height;
	String file;


	MediaDetails({this.width, this.height, this.file});

	MediaDetails.fromJson(Map<String, dynamic> json) {
		width = json['width'];
		height = json['height'];
		file = json['file'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['width'] = this.width;
		data['height'] = this.height;
		data['file'] = this.file;
		return data;
	}
}