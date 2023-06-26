package pl.jgora.aeroklub.flightbook.controller;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import pl.jgora.aeroklub.flightbook.entity.Flight;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.List;

public class PdfCreatorController {


    public static void createPdf(List<Flight> flights, String filenam) throws FileNotFoundException, DocumentException {

        String filename = "test.pdf";
        Document document = new Document();

        PdfWriter.getInstance(document, new FileOutputStream(filename));


        document.open();

        Paragraph paragraph = new  Paragraph("testowanie pdfa");
        document.add(paragraph);


        document.close();

        System.out.println("koniec");
    }
}