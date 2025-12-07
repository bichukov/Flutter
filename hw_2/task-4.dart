abstract class TextFile {
  void open(String filePath);
  void readText();
}

abstract class AudioFile {
  void open(String filePath);
  void playAudio();
}

class TextFileHandler implements TextFile {
  String content = "Пример текста";

  @override
  void open(String filePath) {
    print("Открываем текстовый файл: $filePath");
  }

  @override
  void readText() {
    print("Читаем текст: $content");
  }
}

class AudioFileHandler implements AudioFile {
  @override
  void open(String filePath) {
    print("Открываем аудиофайл: $filePath");
  }

  @override
  void playAudio() {
    print("Воспроизводим аудио...");
  }
}

void main() {
  final textFile = TextFileHandler();
  final audioFile = AudioFileHandler();

  textFile.open("file.txt");
  textFile.readText();

  audioFile.open("file.mp3");
  audioFile.playAudio();
}
