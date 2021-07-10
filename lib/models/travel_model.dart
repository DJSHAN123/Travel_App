class TravelModel {
  final String name;
  final String image;
  final String shortDetail;
  final String description;

  TravelModel(
      {required this.name,
      required this.image,
      required this.shortDetail,
      required this.description});

  factory TravelModel.fromJson(Map<String, dynamic> json) => TravelModel(
      name: json['name'],
      image: json['image'],
      shortDetail: json['short-detail'],
      description: json['description']);
}

List<TravelModel> listofTravel = [
  TravelModel(
      name: "Eiffel Tower",
      description:
          "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower.Locally nicknamed 'La dame de fer' (French for 'Iron Lady'), it was constructed from 1887 to 1889.",
      image: "https://i.imgur.com/zPKiq.jpeg",
      shortDetail:
          "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France."),
  TravelModel(
      description:
          "Rio de Janeiro is a huge seaside city in Brazil, famed for its Copacabana and Ipanema beaches, 38m Christ the Redeemer statue atop Mount Corcovado and for Sugarloaf Mountain, a granite peak with cable cars to its summit. The city is also known for its sprawling favelas (shanty towns). Its raucous Carnaval festival, featuring parade floats, flamboyant costumes and samba dancers, is considered the world’s largest",
      image: "https://i.imgur.com/VoxNhgC.jpeg",
      name: "Rio de Janeiro",
      shortDetail:
          "Rio de Janeiro is a huge seaside city in Brazil, famed for its beaches and Christ the Redeemer statue"),
  TravelModel(
      description:
          "The Taj Mahal, is an ivory-white marble mausoleum on the southern bank of the river Yamuna in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor Shah Jahan to house the tomb of his favourite wife, Mumtaz Mahal; it also houses the tomb of Shah Jahan himself.The tomb is the centrepiece of a 17-hectare (42-acre) complex, which includes a mosque and a guest house, and is set in formal gardens bounded on three sides by a crenellated wall.",
      image: "https://i.imgur.com/UoTAZYB.jpeg",
      name: "Taj Mahal",
      shortDetail:
          "The Taj Mahal, is an ivory-white marble mausoleum on the southern bank of the river Yamuna in the Indian city of Agra."),
];
