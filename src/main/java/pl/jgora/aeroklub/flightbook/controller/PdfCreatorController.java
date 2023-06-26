package pl.jgora.aeroklub.flightbook.controller;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import pl.jgora.aeroklub.flightbook.entity.Flight;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.List;

public class PdfCreatorController {


    public static void main(String[] args) throws FileNotFoundException, DocumentException {

        String filename = "test.pdf";
        Document document = new Document();

        PdfWriter.getInstance(document, new FileOutputStream(filename));


        document.open();

        Paragraph paragraph = new  Paragraph("testowanie pdfa");
        document.add(paragraph);

        PdfPTable table  = new PdfPTable(4);


        PdfPCell header = new PdfPCell(new Phrase("Data lotu:"));
        table.addCell(header);
        header = new PdfPCell(new Phrase("Czas lotu godz:"));
        table.addCell(header);
        header = new PdfPCell(new Phrase("Czas lotu min:"));
        table.addCell(header);

        header = new PdfPCell(new Phrase("liczba lotów::"));
        table.addCell(header);

        table.addCell("1");
        table.addCell("2");
        table.addCell("3");
        table.addCell("4");


        document.add(table);






        document.close();

        System.out.println("koniec");
    }
}