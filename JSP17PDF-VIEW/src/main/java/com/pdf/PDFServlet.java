package com.pdf;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/viewPDF")
public class PDFServlet extends HttpServlet 
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Set content type to PDF
        response.setContentType("application/pdf");

        // Disable caching to prevent Save and Download
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Expires", "0");

        // Obtain or generate your PDF content
        byte[] pdfContent = getPDFContent(); // Replace with your logic

        // Send the PDF content to the client
        response.getOutputStream().write(pdfContent);
    }

    // Replace this with your PDF generation logic
    private byte[] getPDFContent() {
        // Generate or obtain the PDF content
        // Return it as a byte array
        return new byte[0];
    }
}

