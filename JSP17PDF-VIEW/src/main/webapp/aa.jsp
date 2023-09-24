<!DOCTYPE html>
<html>
<head>
    <title>PDF Viewer</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.10.377/pdf.js"></script>
</head>
<body>
    <div style="width: 100%; height: 100%;">
        <canvas id="pdfCanvas"></canvas>
    </div>
    
    <script>
        // Disable context menu options for save, save as, download, and print
        window.addEventListener('contextmenu', function (e) {
            e.preventDefault();
        });
        
        // Load the PDF and display it in the canvas
        const pdfUrl = 'abc.pdf'; // Replace with your PDF file URL
        pdfjsLib.getDocument(pdfUrl).promise.then(function (pdf) {
            pdf.getPage(1).then(function (page) {
                const canvas = document.getElementById('pdfCanvas');
                const context = canvas.getContext('2d');
                const viewport = page.getViewport({ scale: 1.5 });
                
                canvas.width = viewport.width;
                canvas.height = viewport.height;
                
                page.render({ canvasContext: context, viewport: viewport });
            });
        });
    </script>
</body>
</html>
