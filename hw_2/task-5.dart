abstract class Converter {
  void convert(String filePath);
}

class PdfConverter implements Converter {
  @override
  void convert(String filePath) {
    print("Конвертация $filePath в PDF...");
  }
}

class DocxConverter implements Converter {
  @override
  void convert(String filePath) {
    print("Конвертация $filePath в DOCX...");
  }
}

class FileConverter {
  final Converter pdfConverter;
  final Converter docxConverter;

  FileConverter({required this.pdfConverter, required this.docxConverter});

  void convertToPdf(String filePath) {
    pdfConverter.convert(filePath);
  }

  void convertToDocx(String filePath) {
    docxConverter.convert(filePath);
  }
}

void main() {
  final fileConverter = FileConverter(
    pdfConverter: PdfConverter(),
    docxConverter: DocxConverter(),
  );

  fileConverter.convertToPdf("document.txt");
  fileConverter.convertToDocx("document.txt");
}
