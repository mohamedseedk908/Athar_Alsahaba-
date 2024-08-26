class HistoricalPeriodsModel{
  final String name;
  final String image;
  final String discription;
  final Map<String,dynamic>wars;

  HistoricalPeriodsModel({
    required this.name,
    required this.image,
    required this.discription,
    required this.wars});

  factory HistoricalPeriodsModel.fromJson(jsonData){
    return HistoricalPeriodsModel(
      name: jsonData['name'],
      image: jsonData['image'],
      discription: jsonData['description'],
      wars: jsonData['wars']
    );
  }
}