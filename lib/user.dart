class Users {
  final int userID;
  final String name;
  final String username;
  final String email;
  final Address address;
  final Company company;
  final String phone;
  final String website;

  Users({this.userID, this.name, this.username, this.email, this.address, this.company,this.phone,this.website});

  factory Users.fromJson(Map<String, dynamic> usersjson)=> Users(
      userID: usersjson["id"],
      name: usersjson["name"],
      username: usersjson["username"],
      email: usersjson["email"],
      address: Address.fromJson(usersjson["address"]),
      company: Company.fromJson(usersjson["company"]),
      phone: usersjson["phone"],
      website: usersjson["website"]
  );
}

class Address{

  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final Geo geo;

  Address({this.street, this.suite, this.city, this.zipcode,this.geo});

  factory Address.fromJson(Map<String, dynamic> addjson){

    return Address(
      street: addjson["street"],
      suite:  addjson["suite"],
      city: addjson["city"],
      zipcode: addjson["zipcode"],
      geo: Geo.fromJson(addjson["geo"])
    );
  }
}

class Geo{

  final String lat;
  final String lng;

  Geo({this.lat, this.lng});

  factory Geo.fromJson(Map<String, dynamic> geojson){

    return Geo(
      lat: geojson["lat"],
      lng: geojson["lng"]
    );
  }
}

class Company{

  final String name;
  final String catchPhrase;
  final String bs;

  Company({this.name, this.catchPhrase, this.bs});

  factory Company.fromJson(Map<String, dynamic> comjson){

    return Company(
      name: comjson["name"],
      catchPhrase:  comjson["catchPhrase"],
      bs: comjson["bs"],
    );
  }
}