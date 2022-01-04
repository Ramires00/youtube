class Video {

  String id;
  String titulo;
  String descricao;
  String imagem;
  String canal;

  Video({required this.id, required this.titulo, required this.descricao, required this.imagem, required this.canal});

  factory Video.fromJson(Map<String, dynamic> json){
    return Video(
      id: json["id"]["videoId"],
      titulo: json["snippet"]["description"],
      descricao: json["snippet"]["title"],
      imagem: json["snippet"]["thumbnails"]["high"]["url"],
      canal: json["snippet"]["channelId"],
    );
  }


}