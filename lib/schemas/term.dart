class WpTerm {
	String taxonomy;
	bool embeddable;
	String href;

	WpTerm({this.taxonomy, this.embeddable, this.href});

	WpTerm.fromJson(Map<String, dynamic> json) {
		taxonomy = json['taxonomy'];
		embeddable = json['embeddable'];
		href = json['href'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['taxonomy'] = this.taxonomy;
		data['embeddable'] = this.embeddable;
		data['href'] = this.href;
		return data;
	}
}

class WpTermList
{
  List<WpTerm> terms;
  WpTermList({this.terms});


  WpTermList.fromJson(Map<String,dynamic>json)
  {
     if (json?.values != null) {
      terms = new List<WpTerm>();
      json.values.forEach((v) {
        terms.add(new WpTerm.fromJson(v));
      });
    }
  }


  Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
	  if (this.terms != null) {
      //data[''] = this.terms.map((v) => v.toJson());
    }
		return data;
	}

}