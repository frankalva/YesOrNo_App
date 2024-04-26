enum FromWho {me, she}

class Message{
  final String text;
  final FromWho fromWho;


  Message({
    required this.text,
    required this.fromWho
  });


}