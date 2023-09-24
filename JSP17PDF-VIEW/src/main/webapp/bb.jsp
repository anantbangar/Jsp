<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>View PDF</title>
    <!-- Include PDF.js library -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.10.377/pdf.js"></script>
</head>
<body>
    <!-- Container to display PDF -->
    <div id="pdfContainer"></div>

    <script type="text/javascript">
        // Disable save, save as, print, and download options
        function disablePDFViewerOptions() {
            // Get the PDF viewer container
            var pdfContainer = document.getElementById('pdfContainer');

            // Create a PDF.js viewer instance
            var pdfViewer = pdfjsLib.getDocument('pp.pdf');

            // Render the PDF in the viewer
            pdfViewer.promise.then(function(pdfDoc) {
                for (var pageNum = 1; pageNum <= pdfDoc.numPages; pageNum++) {
                    pdfDoc.getPage(pageNum).then(function(page) {
                        var viewport = page.getViewport({ scale: 1.0 });
                        var canvas = document.createElement('canvas');
                        var context = canvas.getContext('2d');
                        canvas.height = viewport.height;
                        canvas.width = viewport.width;

                        // Render the page to the canvas
                        page.render({
                            canvasContext: context,
                            viewport: viewport
                        });

                        // Append the canvas to the PDF viewer container
                        pdfContainer.appendChild(canvas);
                    });
                }
            });
        }

        // Call the function to load and display the PDF
        disablePDFViewerOptions();
    </script>
</body>
</html>
