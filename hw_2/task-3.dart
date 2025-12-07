abstract class FileUploader {
  void upload(String filePath);
}

abstract class FileConverter {
  void convert(String filePath);
}

class PdfFile implements FileUploader, FileConverter {
  @override
  void upload(String filePath) {
    print("Загружаем PDF-файл: $filePath");
  }

  @override
  void convert(String filePath) {
    print("Конвертируем $filePath в PDF...");
  }
}

class EncryptedFile implements FileUploader {
  @override
  void upload(String filePath) {
    print("Загружаем зашифрованный файл: $filePath");
  }
}

void main() {
  List<FileUploader> uploaders = [
    PdfFile(),
    EncryptedFile(),
  ];

  for (var file in uploaders) {
    file.upload("document.txt");
  }

  List<FileConverter> converters = [
    PdfFile(),
  ];

  for (var file in converters) {
    file.convert("document.txt");
  }
}
