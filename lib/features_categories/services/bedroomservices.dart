class Bedroom_Service {
  final String name;
  final String image;
  final String servicetype;
  final String rating;
  final String price;
  final String location;
  final String description;
  final String chooseus;
  final String phonenum;
  final String email;

  Bedroom_Service(
    this.name,
    this.image,
    this.servicetype,
    this.rating,
    this.price,
    this.location,
    this.description,
    this.chooseus,
    this.phonenum,
    this.email,
  );

  static List<Bedroom_Service> bedroomservice = [
    Bedroom_Service(
        'Maid Magic',
        'assets/images/bedroom_cleaning.png',
        'Services provided: Bed Making, Vacuuming, Organizing, Mattress Cleaning',
        "5.0",
        "100",
        "Penang",
        "Maid Magic was founded in 2010 by a team of experienced cleaning professionals with a vision to provide high-quality and reliable cleaning services. Starting as a local service, Maid Magic quickly expanded its operations, earning a reputation for attention to detail and customer satisfaction.",
        "Choose Maid Magic for a touch of enchantment in your space. Our experienced team ensures meticulous cleaning, turning your bedroom into a haven of cleanliness and comfort. We take pride in our reliability and commitment to exceeding your expectations.",
        "+6012-230 9983",
        "maidmagic@gmail.com"),
    Bedroom_Service(
        'FreshStart Cleaning Co.',
        'assets/images/bedroom_cleaning2.png',
        'Services provided: Air Freshening, Deep Cleaning, Bed Making',
        "4.8",
        "150",
        "Perak",
        "FreshStart Cleaning Co. was established in 2012 by a group of environmentally conscious individuals who wanted to provide cleaning services that prioritize sustainability. The company has since become a leader in green cleaning solutions, using eco-friendly products and practices.",
        "FreshStart Cleaning Co. believes in clean living without compromising the planet. Our green cleaning solutions and eco-friendly practices ensure a fresh start for your bedroom. Choose us for a spotless space that aligns with your values.",
        "+6016-231 6435",
        "freshstartcleaning@gmail.com"),
    Bedroom_Service(
        'Sparkle Solutions',
        'assets/images/sparkle.png',
        'Services provided: Sweeping, Trash Removal',
        "3.0",
        "200",
        "Kedah",
        "Sparkle Solutions began its journey in 2005 when its founder, a passionate entrepreneur with a background in hospitality, recognized the need for specialized bedroom cleaning services. Since then, the company has grown to serve residential and commercial clients with a commitment to excellence.",
        "At Sparkle Solutions, we transform your bedroom into a dazzling retreat. Our meticulous cleaning methods, attention to detail, and commitment to customer satisfaction set us apart. Trust us to bring a sparkle to your living space.",
        "+6018-997 1578",
        "sparkle4u@gmail.com"),
    Bedroom_Service(
        'Elite Clean Team',
        'assets/images/elite_clean.png',
        'Services provided: Trash Removal, Closet Cleaning, Bed Making',
        "3.5",
        "125",
        "Negeri Sembilan",
        "Elite Clean Team has been a trusted name in the cleaning industry since 2008. Founded by a team of cleaning professionals with a combined experience of over 20 years, the company has consistently delivered top-notch bedroom cleaning services, earning the loyalty of a diverse clientele.",
        "Choose Elite Clean Team for an elite cleaning experience. With over two decades of expertise, our team guarantees top-notch service, professionalism, and a commitment to making your bedroom a pristine and inviting sanctuary.",
        "+6017-254 3423",
        "eliteclean@gmail.com"),
    Bedroom_Service(
        'Spotless Homes Inc.',
        'assets/images/spotless_home.png',
        'Services provided: Mattress Cleaning, Bed Making, Ceiling and Wall Cleaning',
        "4.5",
        "110",
        "Sarawak",
        "Spotless Homes Inc. has been a family-owned business since its inception in 1995. What began as a small local venture has grown into a well-established cleaning service known for its personalized approach and commitment to creating hygienic and inviting bedroom spaces.",
        "Spotless Homes Inc. - where cleanliness meets perfection. Since 1995, we've been synonymous with organized, spotless bedrooms. Our family-owned business ensures a personal touch in every cleaning session, making your home spotless and inviting.",
        "+6014-230 9123",
        "spotlesshomes@gmail.com"),
    Bedroom_Service(
        'Heavenly Housekeeping',
        'assets/images/heavenly_house.png',
        'Services provided: Mattress Cleaning, Bed Making, Vacuuming',
        "4.9",
        "130",
        "Sabah",
        "Heavenly Housekeeping has been a fixture in the cleaning industry since 2002. Established by a former hotel housekeeping manager, the company brings a hospitality-inspired touch to its residential cleaning services, ensuring that every client experiences a high level of cleanliness.",
        "Heavenly Housekeeping brings the hospitality touch to your home. Founded in 2002, we offer more than just cleanliness - we deliver a heavenly experience. Choose us for a meticulous and personalized approach to cleaning your bedroom.",
        "+6012-123 4332",
        "heavenkeeping@gmail.com"),
    Bedroom_Service(
        'Beyond Clean Living',
        'assets/images/beyond_clean.png',
        'Services provided: Air Purification, Sweeping',
        "2.5",
        "135",
        "Kelantan",
        "Beyond Clean Living was founded in 2014 by a team of cleaning enthusiasts who wanted to go beyond traditional cleaning services. Known for its holistic approach, the company integrates organization and lifestyle elements into its cleaning routines, creating truly rejuvenating bedroom environments.",
        "eyond Clean Living goes beyond traditional cleaning. Our holistic approach integrates organization and lifestyle elements, creating bedrooms that rejuvenate your senses. Choose us for a comprehensive cleaning experience that goes beyond the surface.",
        "+6012-230 9983",
        "b4yondclean@gmail.com"),
  ];
}
