<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>View PDF with Bookmarks</title>
    <!-- Include PDF.js library -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.10.377/pdf.js"></script>
</head>
<body>
    <!-- Container to display PDF -->
    <div id="pdfContainer"></div>

    <!-- Bookmarks container -->
    <div id="bookmarkContainer">
        <h2>Bookmarks</h2>
        <ul id="bookmarkList"></ul>
        <button id="addBookmarkBtn">Add Bookmark</button>
    </div>

    <script type="text/javascript">
        // Initialize variables
        var pdfDoc = null;
        var pdfContainer = document.getElementById('pdfContainer');
        var bookmarkList = document.getElementById('bookmarkList');
        var addBookmarkBtn = document.getElementById('addBookmarkBtn');

        // Function to add a bookmark
        function addBookmark(pageNum, label) {
            var bookmarkItem = document.createElement('li');
            bookmarkItem.innerHTML = '<a href="#" data-page="' + pageNum + '">' + label + '</a>';
            bookmarkList.appendChild(bookmarkItem);

            // Add click event to navigate to the bookmarked page
            bookmarkItem.addEventListener('click', function (e) {
                e.preventDefault();
                var page = parseInt(e.target.getAttribute('data-page'), 10);
                goToPage(page);
            });
        }

        // Function to go to a specific page
        function goToPage(pageNum) {
            if (pdfDoc !== null) {
                pdfDoc.getPage(pageNum).then(function (page) {
                    // Clear the PDF container
                    pdfContainer.innerHTML = '';

                    // Render the page to the container
                    var viewport = page.getViewport({ scale: 1.0 });
                    var canvas = document.createElement('canvas');
                    var context = canvas.getContext('2d');
                    canvas.height = viewport.height;
                    canvas.width = viewport.width;
                    page.render({
                        canvasContext: context,
                        viewport: viewport
                    });
                    pdfContainer.appendChild(canvas);
                });
            }
        }

        // Function to load and display the PDF
        function loadPDF(pdfPath) {
            pdfjsLib.getDocument(pdfPath).promise.then(function (doc) {
                pdfDoc = doc;
                var totalPages = pdfDoc.numPages;

                // Load and display the first page
                goToPage(1);

                // Add a bookmark for the first page
                addBookmark(1, 'Page 1');
                
                // Add bookmarks for other pages
                for (var pageNum = 2; pageNum <= totalPages; pageNum++) {
                    addBookmark(pageNum, 'Page ' + pageNum);
                }
            });
        }

        // Event listener for the "Add Bookmark" button
        addBookmarkBtn.addEventListener('click', function () {
            if (pdfDoc !== null) {
                var currentPage = pdfContainer.querySelector('canvas');
                var currentPageNum = parseInt(currentPage.getAttribute('data-page'), 10);
                var label = prompt('Enter a label for your bookmark:', 'Bookmark ' + currentPageNum);
                
                if (label !== null) {
                    addBookmark(currentPageNum, label);
                }
            }
        });

        // Call the function to load and display the PDF
        loadPDF('pp.pdf');
    </script>
</body>
</html>


               
