

class Building {
  final String assets;
  final String name;
  final String location;
  final String about;
  final double rating;
  final int bathroom;
  final int bedroom;
  final int area;
  final int price;
  final String tag;

  Building({
    required this.assets,
    required this.name,
    required this.location,
    required this.about,
    required this.rating,
    required this.bathroom,
    required this.bedroom,
    required this.area,
    required this.price,
    required this.tag,
  });
}

final buildingsNearMe = [
  Building(
    assets: "assets/images/hostel_2.jpg",
    name: "Christ King Hostel",
    location: "Roysambu, Nairobi",
    about: "Christ King Hostel is an accomodation hub for students that seeks to provide a conducive environment for learning and growing both emotionally and spiritually(You can tell from the name). Located one kilometre away from the main Thika highway, it's strategically located for any transportation logistics. We offer complete balanced meal packages to help our students also grow spiritually. ",
    rating: 4,
    bathroom: 3,
    bedroom: 4,
    area: 1000,
    price: 99,
    tag: "Luxury, Family",
  ),
  Building(
    assets: "assets/images/hostel_1.jpg",
    name: "Peace Haven",
    location: "Kasarani, Nairobi",
    about:
        "Peace Haven is located only 2 Km away from the Thika Super highway. We take pride in providing the best meals and security to our students and also providing the most conducive environment for learning",
    rating: 5,
    bathroom: 5,
    bedroom: 6,
    area: 2300,
    price: 1599,
    tag: "Best food",
  ),
  Building(
    assets: "assets/images/hostel_3.jpeg",
    name: "Sictory Hostels",
    location: "Ngara, Nairobi",
    about:
        " When you are about conducive environment for learning, accomodation and best meals, think about Victory Hostels. Located at the heart of Ngara, expect fresh produce from the farmers that also helps our students to grow healthier",
    rating: 5,
    bathroom: 3,
    bedroom: 5,
    area: 1700,
    price: 1399,
    tag: "Office, Luxury",
  ),
  Building(
    assets: "assets/images/hostel_4.jpeg",
    name: "Residence Park",
    location: "Kasarani, Nairobi",
    about:
        "This property is managed by Marite Enterprises, 2021 recipient of the Kenya Best Managed Residential properties for the third year in a row, sponsored by Jibebe organization. Call and let us tell you why! ENJOY THE LIFE OF LUXURY Located in Kasarani, Nairobi The Residences atResidence Park Hostel offers studio, one-, and two- bedroom apartments and features a door attendant, covered parking, swimming pool with expansive sundeck, bike racks, BBQ/picnic area, and more!",
    rating: 4,
    bathroom: 3,
    bedroom: 4,
    area: 900,
    price: 889,
    tag: "Family, Apartment",
  ),
];

final popularInNairobi = [
  Building(
    assets: "assets/images/hostel_5.jpeg",
    name: "The Residences at New City",
    location: "Roysambu, Nairobi",
    about:
        "This property is managed by Marite Enterprises, 2021 recipient of the Kenya Best Managed Residential properties for the third year in a row, sponsored by Jibebe organization. Call and let us tell you why! ENJOY THE LIFE OF LUXURY Located in Roysambu, Nairobi The Residences at New City Hostel offers studio, one-, and two- bedroom apartments and features a door attendant, covered parking, swimming pool with expansive sundeck, bike racks, BBQ/picnic area, and more!",
    rating: 4,
    bathroom: 3,
    bedroom: 4,
    area: 1000,
    price: 999,
    tag: "Luxury, Family",
  ),
  Building(
    assets: "assets/images/hostel_6.jpeg",
    name: "Elevate Tower",
    location: "Allsops, Nairobi",
    about:
        "This property is managed by Marite Enterprises, 2021 recipient of the Kenya Best Managed Residential properties for the third year in a row, sponsored by Jibebe organization. Call and let us tell you why! ENJOY THE LIFE OF LUXURY Located in Allsops, Nairobi The Residences at Elevate Tower Hostel offers studio, one-, and two- bedroom apartments and features a door attendant, covered parking, swimming pool with expansive sundeck, bike racks, BBQ/picnic area, and more!",
    rating: 4,
    bathroom: 5,
    bedroom: 6,
    area: 2300,
    price: 1599,
    tag: "Family, Apartment",
  ),
  Building(
    assets: "assets/images/hostel_8.jpeg",
    name: "Vines Hostel",
    location: "Roasters, Nairobi",
    about:
        "This property is managed by Marite Enterprises, 2021 recipient of the Kenya Best Managed Residential properties for the third year in a row, sponsored by Jibebe organization. Call and let us tell you why! ENJOY THE LIFE OF LUXURY Located in Roasters, Nairobi The Residences at Vines Hostel offers studio, one-, and two- bedroom apartments and features a door attendant, covered parking, swimming pool with expansive sundeck, bike racks, BBQ/picnic area, and more!",
    rating: 4,
    bathroom: 3,
    bedroom: 5,
    area: 1700,
    price: 1399,
    tag: "Office, Luxury",
  ),
  Building(
    assets: "assets/images/hostel_1.jpg",
    name: "Residence View",
    location: "Ruaraka, Nairobi",
    about:
        "This property is managed by Marite Enterprises, 2021 recipient of the Kenya Best Managed Residential properties for the third year in a row, sponsored by Jibebe organization. Call and let us tell you why! ENJOY THE LIFE OF LUXURY Located in Ruaraka, Nairobi The Residences at Residence View Hostel offers studio, one-, and two- bedroom apartments and features a door attendant, covered parking, swimming pool with expansive sundeck, bike racks, BBQ/picnic area, and more!",
    rating: 4,
    bathroom: 3,
    bedroom: 4,
    area: 900,
    price: 899,
    tag: "Family, Apartment",
  ),
  Building(
    assets: "assets/images/hostel_3.jpeg",
    name: "Prime View Hostel",
    location: "Jogoo Road, Nairobi",
    about:
        "This property is managed by Marite Enterprises, 2021 recipient of the Kenya Best Managed Residential properties for the third year in a row, sponsored by Jibebe organization. Call and let us tell you why! ENJOY THE LIFE OF LUXURY Located in Jogoo Road, Nairobi The Residences at Prime View  Hostel offers studio, one-, and two- bedroom apartments and features a door attendant, covered parking, swimming pool with expansive sundeck, bike racks, BBQ/picnic area, and more!",
    rating: 4,
    bathroom: 3,
    bedroom: 4,
    area: 1000,
    price: 999,
    tag: "Luxury, Family",
  ),
  Building(
    assets: "assets/images/hostel_9.jpeg",
    name: "Elevate Hostels",
    location: "Githurai, Kiambu",
    about:
        "This property is managed by Marite Enterprises, 2021 recipient of the Kenya Best Managed Residential properties for the third year in a row, sponsored by Jibebe organization. Call and let us tell you why! ENJOY THE LIFE OF LUXURY Located in Ruaraka, Nairobi The Residences at Qwetu Hostel offers studio, one-, and two- bedroom apartments and features a door attendant, covered parking, swimming pool with expansive sundeck, bike racks, BBQ/picnic area, and more!",
    rating: 4,
    bathroom: 5,
    bedroom: 6,
    area: 2300,
    price: 1599,
    tag: "Family, Apartment",
  ),
  Building(
    assets: "assets/images/hostel_4.jpeg",
    name: "Qwetu Hostels",
    location: "Ruaraka, Nairobi",
    about:
        "This property is managed by Marite Enterprises, 2021 recipient of the Kenya Best Managed Residential properties for the third year in a row, sponsored by Jibebe organization. Call and let us tell you why! ENJOY THE LIFE OF LUXURY Located in Ruaraka, Nairobi The Residences at Qwetu Hostel offers studio, one-, and two- bedroom apartments and features a door attendant, covered parking, swimming pool with expansive sundeck, bike racks, BBQ/picnic area, and more!",
    rating: 4,
    bathroom: 3,
    bedroom: 5,
    area: 1700,
    price: 1399,
    tag: "Office, Luxury",
  ),
  Building(
    assets: "assets/images/hostel_2.jpg",
    name: "Residence Hostel",
    location: "Ruiru, Kiambu",
    about:
        "This property is managed by Athuri and Sons Limited, 2019 recipients of Kiambu county best managed residential property. We seek to provide students with the best environment for studying and making friends as well as growing spiritually. The apartment is loocated in Ruiru in  Kiambu county next to shell petrol station opposite ebenezer church. Call us and let us know when you will be joining us.",
    rating: 4,
    bathroom: 3,
    bedroom: 4,
    area: 900,
    price: 899,
    tag: "Family, Apartment",
  ),
];
