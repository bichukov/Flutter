abstract class FileConverter {
  void format();
}

class PdfFormat implements FileConverter {
  final String filePath;

  PdfFormat(this.filePath);

  @override
  void format() {

    print ("Конвертируем $filePath в PDF...");
  }
}

class DocxFormat implements FileConverter {
  final String filePath;

  DocxFormat(this.filePath);

  @override
  void format() {

    print("Конвертируем $filePath в DOCX...");
  }
}

class JpgFormat implements FileConverter {
  final String filePath;

  JpgFormat(this.filePath);

  @override
  void format() {

    print ("Конвертируем $filePath в JPG...");
  }
}

class FileConversionFile {
  void convert(FileConverter converter) {
    converter.format();
  }
}
void main() {

  final file = FileConversionFile();

  final pdf = PdfFormat("document.txt");
  final docx = DocxFormat("document.txt");
  final jpg = JpgFormat("img.png");

  file.convert(pdf);
  file.convert(docx);
  file.convert(jpg);
}

