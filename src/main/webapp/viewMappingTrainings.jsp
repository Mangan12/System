<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>TTSS</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js" integrity="sha512-qZvrmS2ekKPF2mSznTQsxqPgnpkI4DNTlrdUmTzrDgektczlKNRRhy5X5AAOnx5S09ydFYWWNSfcEqDTTHgtNA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js" integrity="sha512-BNaRQnYJYiPSqHHDb58B0yaPfCu+Wgds8Gp/gU33kqBtgNS4tSPHuGibyoeqMV/TJlSKda6FXzoEyYGjTe+vXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

 <script src="https://cdn.jsdelivr.net/npm/xlsx/dist/xlsx.full.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/TableExport/5.2.0/js/tableexport.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/shim.min.js" integrity="sha512-nPnkC29R0sikt0ieZaAkk28Ib7Y1Dz7IqePgELH30NnSi1DzG4x+envJAOHz8ZSAveLXAHTR3ai2E9DZUsT8pQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!-- Add these lines inside the <head> tag -->
<!--     <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js" integrity="sha512-qZvrmS2ekKPF2mSznTQsxqPgnpkI4DNTlrdUmTzrDgektczlKNRRhy5X5AAOnx5S09ydFYWWNSfcEqDTTHgtNA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js" integrity="sha512-BNaRQnYJYiPSqHHDb58B0yaPfCu+Wgds8Gp/gU33kqBtgNS4tSPHuGibyoeqMV/TJlSKda6FXzoEyYGjTe+vXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> -->
<!--     <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script> -->
    
   <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        .btn {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .btn-success {
            background-color: #5cb85c;
            color: #fff;
        }
        .btn-success:hover {
            background-color: #4CAF50;
        }
        .row {
            display: flex;
            flex-wrap: wrap;
            margin-bottom: 16px;
        }
        .column {
            flex: 1;
            margin-bottom: 16px;
        }
        label {
            font-weight: bold;
        }
        input[type="text"] {
            width: 100%;
            padding: 8px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        select {
            width: 100%;
            padding: 8px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            border: 5px;
        }
        th, td {
            border: 1px solid blue;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #4b9deb;
            font-weight: bold;
        }
        tr{
        
        }
        
         /* Keyframes for blinking effect */
/*     @keyframes blink { */
/*         0% { opacity: 1; } */
/*         50% { opacity: 0; } */
/*         100% { opacity: 1; } */
/*     } */

/*     /* Apply blinking animation to h3 */ */
/*     h3.blinking { */
/*         animation: blink 1s infinite; */
/*     } */
        
    </style>
</head>
<body onload="fetchData()"> <!-- Call fetchData() function on page load -->
    <a href="${pageContext.request.contextPath}/mastermapping2.jsp" class="btn btn-success mt-2" style="background-color: #5cb85c; border-color: #5cb85c;">Create New Mapping +</a>
    <br>
    <br>
    
    <div class="row">
        <div class="column">
            <div class="field">
                <label for="trainingname">Select a Training:</label> <select id="trainingname" onchange="search()">
                    <!-- Placeholder option -->
                    <option value="" disabled selected>Select a Training</option>
                </select>
            </div>
        </div>
        <div class="column">
            <div class="field">
                <label for="venueName">Venue Name:</label> <input type="text" id="venueName" readonly>
            </div>
        </div>
        <div class="column">
            <div class="field">
                <label for="venueid">Venue id:</label> <input type="text" id="venueid" readonly>
            </div>
        </div>
        <div class="column">
            <div class="field">
                <label for="dropdown">Select a management:</label> 
                <select id="dropdown">
                    <!-- Placeholder option -->
                 
                </select>
            </div>
        </div>
    </div>
    <div class="table-container">
        <table  id="main" style="display: none; border: 2px solid black;">
            <thead>
                <tr>
                    <th>Slno.</th>
                    <th>Treasury Id</th>
                    <th>Teacher Name</th>
                    <th>District</th>
                    <th>Mandal</th>
                    <th>Designation</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody id="mappingTableBody">
                <!-- Table body content will be populated dynamically -->
            </tbody>
        </table>
    </div>
 
	 <div id="downloadbuttons" class="row" style="display: none;">
	    <div class="column">
	        <button class="btn btn-success" id="pdfbutton">PDF</button>
	        <button class="btn btn-success" id="excelbutton">Excel</button>
	    </div>
	</div>
	<div id="mycontent" style="padding-top: 2px; padding-left: 10px; padding-right: 10px; padding-bottom:2px">
<div class="table-container" id="cc" style="display: none; border: 2px solid black;">
        <h3 class="blinking">Course Co-Ordinator Table</h3>
    
        <table >
            <thead>
                <tr>
                    <th>Slno.</th>
                    <th>Treasury Id</th>
                    <th>Teacher Name</th>
                    <th>District</th>
                    <th>Mandal</th>
                    <th>Designation</th>
                    <th>Email</th>
                    <th>Mobile</th>
                </tr>
            </thead>
            <tbody id="CCTableBody">
                <!-- Table body content will be populated dynamically -->
            </tbody>
        </table>
    </div>
     <br>
    <br>
    <div class="table-container"  id="acc" style="display: none; border: 2px solid black;">
            <h3 class="blinking">Assistant Course Co-Ordinator Table</h3>
    
        <table >
            <thead>
                <tr>
                    <th>Slno.</th>
                    <th>Treasury Id</th>
                    <th>Teacher Name</th>
                    <th>District</th>
                    <th>Mandal</th>
                    <th>Designation</th>
                    <th>Email</th>
                    <th>Mobile</th>
                </tr>
            </thead>
            <tbody id="ACCTableBody">
                <!-- Table body content will be populated dynamically -->
            </tbody>
        </table>
    </div>
     <br>
    <br>
    <div class="table-container" id="os" style="display: none; border: 2px solid black;">
    <h3 class="blinking">Office Staff Table</h3>
        <table >
        
            <thead>
                <tr>
                    <th>Slno.</th>
                    <th>Treasury Id</th>
                    <th>Teacher Name</th>
                    <th>District</th>
                    <th>Mandal</th>
                    <th>Designation</th>
                    <th>Email</th>
                    <th>Mobile</th>
                </tr>
            </thead>
            <tbody id="OSTableBody">
                <!-- Table body content will be populated dynamically -->
            </tbody>
        </table>
    </div>
     <br>
    <br>
    <div class="table-container" id="rp" style="display: none; border: 2px solid black;">
            <h3 class="blinking">Resourse person(Trainer) Table</h3>
    
        <table >
            <thead>
                <tr>
                    <th>Slno.</th>
                    <th>Treasury Id</th>
                    <th>Teacher Name</th>
                    <th>District</th>
                    <th>Mandal</th>
                    <th>Designation</th>
                    <th>Email</th>
                    <th>Mobile</th>
                </tr>
            </thead>
            <tbody id="RPTableBody">
                <!-- Table body content will be populated dynamically -->
            </tbody>
        </table>
    </div>
    <br>
    <br>
    <div class="table-container" id="pp" style="display: none; border: 2px solid black;">
            <h3 class="blinking">Participants Table</h3>
    
        <table >
            <thead>
                <tr>
                    <th>Slno.</th>
                    <th>Treasury Id</th>
                    <th>Teacher Name</th>
                    <th>District</th>
                    <th>Mandal</th>
                    <th>Designation</th>
                    <th>Email</th>
                    <th>Mobile</th>
                   
                </tr>
            </thead>
            <tbody id="PPTableBody">
                <!-- Table body content will be populated dynamically -->
            </tbody>
        </table>
    </div>
    </div>
    
    
<!--     <button onclick="generatePDF()">Download PDF</button> 
    <script> 
//        function generatePDF() {
//         const pdf = new jsPDF();

//         // Function to capture table content and add it to the PDF
//         function addTableToPDF(tableId, title) {
//             const table = document.getElementById(tableId);
//             html2canvas(table).then(canvas => {
//                 const imageData = canvas.toDataURL('image/png');
//                 pdf.addImage(imageData, 'PNG', 10, 10, 180, 0);
//                 pdf.text(title, 10, 5);
//                 pdf.addPage();
//             });
//         }

//         // Add each table to the PDF
//         addTableToPDF('main', 'Main Table');
//         addTableToPDF('cc', 'Course Co-Ordinator Table');
//         addTableToPDF('acc', 'Assistant Course Co-Ordinator Table');
//         addTableToPDF('os', 'Office Staff Table');
//         addTableToPDF('rp', 'Resource Person Table');
//         addTableToPDF('pp', 'Participants Table');

//         // Save the PDF
//         pdf.save('report.pdf');
//     }

    
    </script> -->
    
    <script>
    $(document).ready(function() {
        $('#pdfbutton').click(function() {
            window.jsPDF = window.jspdf.jsPDF;
            // Capture content to be included in the PDF
            var content = document.getElementById('mycontent');

            // Adjust CSS styles for better text rendering
            content.style.webkitTextStroke = '0.5px'; // Add text stroke for better visibility (optional)
            content.style.paddingTop = '2px';
            content.style.paddingLeft = '10px';
            content.style.paddingRight = '10px';
            content.style.paddingBottom = '2px';
            // Add padding to leave space from the top (adjust as needed)

            // Use html2canvas to capture the content as an image
            html2canvas(content, {
                scale: 3, // Increase scale for higher resolution
                useCORS: true, // Enable CORS to capture images from other domains (optional)
                logging: true // Enable logging to console (optional, for debugging)
            }).then(function(canvas) {
                // Convert canvas to base64 image data
                var imgData = canvas.toDataURL('image/png');

                // Initialize jsPDF
                var pdf = new jsPDF();

                // Add image to PDF
                var imgWidth = 210; // A4 page width in mm
                var imgHeight = canvas.height * imgWidth / canvas.width;
                pdf.addImage(imgData, 'PNG', 0, 0, imgWidth, imgHeight);

                // Save PDF
                pdf.save('All_Management.pdf');
            });
        });
        
        $('#excelbutton').click(function() {
            // Extract table data
            var tablenames = ['CC', 'ACC', 'OS', 'RP', 'PP'];

            var tables = document.getElementById('mycontent').getElementsByTagName('table');
            var excelData = [];
            console.log(tables);
            for (var i = 0; i < tables.length; i++) {
                excelData.push(extractTableData(tables[i]));
            }

            // Create Excel workbook
            var wb = XLSX.utils.book_new();
            for (var i = 0; i < excelData.length; i++) {
                var ws = XLSX.utils.aoa_to_sheet([excelData[i].headers].concat(excelData[i].rows));
                XLSX.utils.book_append_sheet(wb, ws, tablenames[i]);
            }

            // Save Excel file
            XLSX.writeFile(wb, 'all_tables.xlsx');
        });
        
        $('#dropdown').change(function() { 
            $('#downloadbuttons').css('display', 'none');
            $('#mycontent').css('display', 'none');
            test();	
        });
    });


    function extractTableData(table) {
        // Implement your table data extraction logic here
        // This could involve iterating through table rows and cells,
        // extracting text content, and handling specific data types

        // Example: Extract data from table headers and rows
        let headers = [];
        let rows = [];
        const tableHead = table.querySelector('thead');
        if (tableHead) {
            const tableHeaderCells = tableHead.querySelectorAll('th');
            headers = Array.from(tableHeaderCells).map(th => th.textContent.trim());
        }

        const tableBody = table.querySelector('tbody');
        if (tableBody) {
            const tableRows = tableBody.querySelectorAll('tr');
            rows = Array.from(tableRows).map(tr => {
                const cells = tr.querySelectorAll('td');
                return Array.from(cells).map(td => td.textContent.trim());
            });
        }

        return { headers, rows };
    }
        function fetchData() {
            // Fetch management names
            $.ajax({
                type: "GET",
                url: "${pageContext.request.contextPath}/api/Allmanagement",
                success: function(data) {
                    const dropdown = document.getElementById('dropdown');
                    dropdown.innerHTML = '<option value="" disabled selected>Select a Management</option>'; // Clear previous content
                    const selectAllOption = document.createElement('option');
                    selectAllOption.value = 'all';
                    selectAllOption.textContent = 'Select All Management';
                    dropdown.appendChild(selectAllOption); // Add the "Select All Management" option                   
                    data.forEach(option => {
                        const optionElement = document.createElement('option');
                        optionElement.value = option.management_short_name;
                        optionElement.textContent = option.management_name;
                        dropdown.appendChild(optionElement);
                    });
                },
                error: function(error) {
                    console.error('Error fetching management data:', error);
                }
            });
            // Fetch training names
            $.ajax({
                type: "GET",
                url: "${pageContext.request.contextPath}/api/scheduledTrainings1",
                success: function(data) {
                    const trainingDropdown = document.getElementById('trainingname');
                    trainingDropdown.innerHTML = '<option value="" disabled selected>Select a Training</option>'; // Clear previous content
                    data.forEach(training => {
                        const trainingOption = document.createElement('option');
                        trainingOption.value = training.ref_planner_id;
                        trainingOption.textContent = training.tname;
                        trainingDropdown.appendChild(trainingOption);
                    });
                },
                error: function(error) {
                    console.error('Error fetching training data:', error);
                }
            });
        }
        function search(){
            const selectedTrainingId = document.getElementById('trainingname').value;
            if (!selectedTrainingId) {
                alert('Please select a training first.');
                return;
            }
            // Fetch additional details based on the selected training
            $.ajax({
                type: "GET",
                url: "${pageContext.request.contextPath}/api/scheduledTrainingsbyid?ref_planner_id=" + selectedTrainingId,
                success: function(data) {
                    document.getElementById('venueName').value = data[0].venue_name;
                    document.getElementById('venueid').value = data[0].venue_id;
                },
                error: function(error) {
                    console.error('Error fetching training details:', error);
                    alert('Error fetching training details. Please try again.');
                }
            });
        }
        function test() {
            const selectedTrainingId = document.getElementById('trainingname').value;
            const selectedVenueId = document.getElementById('venueid').value;
            const selectedManagement = document.getElementById('dropdown').value;
            console.log(selectedManagement);
            // Determine the API endpoint based on the selected management type
            if (selectedManagement === 'all') {
            	$('#mycontent').css('display', 'block');
                // If "Select All Management" is selected, call all 5 APIs
            	 const ccApiUrl = `${pageContext.request.contextPath}/api/getall/cc`;
                 const accApiUrl = `${pageContext.request.contextPath}/api/getall/acc`;
                 const rpApiUrl = `${pageContext.request.contextPath}/api/getall/rp`;
                 const ppApiUrl = `${pageContext.request.contextPath}/api/getall/pp`;
                 const osApiUrl = `${pageContext.request.contextPath}/api/getall/os`;       
                 // Array to store promises for each API call
                 const promises = [];
                 // Push each API call promise to the promises array
                 promises.push($.get(ccApiUrl, { trainingid: selectedTrainingId, venueid: selectedVenueId }));
                 promises.push($.get(accApiUrl, { trainingid: selectedTrainingId, venueid: selectedVenueId }));
                 promises.push($.get(rpApiUrl, { trainingid: selectedTrainingId, venueid: selectedVenueId }));
                 promises.push($.get(ppApiUrl, { trainingid: selectedTrainingId, venueid: selectedVenueId }));
                 promises.push($.get(osApiUrl, { trainingid: selectedTrainingId, venueid: selectedVenueId }));
                 // Wait for all promises to resolve
                 Promise.all(promises)
                     .then(responses => {
                         // Combine responses from different management types
                         const Response = responses.reduce((acc, curr) => acc.concat(curr), []);
                         console.log('Combined response:', Response);
                         // Display the combined response in the table
                         displayResponseInDifferentTable(Response, selectedTrainingId, selectedVenueId, selectedManagement);
                     })
                     .catch(error => {
                         console.error('Error fetching data for all management types:', error);
                     });
                 return; // Exit the function after initiating API calls
         }
             else {
                // If a specific management type is selected, call the corresponding API
                const apiUrl = getApiUrl(selectedManagement);
                if (apiUrl) {
                    // Call the API
                    $.ajax({
                        type: 'GET',
                        url: apiUrl,
                        data: {
                            trainingid: selectedTrainingId,
                            venueid: selectedVenueId
                        },
                        success: function(response) {
                            console.log(`${selectedManagement} API call successful:`, response);
                            // Display the response in the corresponding table
                            displayResponseInTable(response,selectedTrainingId, selectedVenueId,selectedManagement);
                        },
                        error: function(error) {
                            console.error('Error calling API:', error);
                        }
                    });
                }
            }
        }
        function getApiUrl(managementType) {
            switch (managementType) {
                case 'CC':
                    return '${pageContext.request.contextPath}/api/getall/cc';
                case 'ACC':
                    return '${pageContext.request.contextPath}/api/getall/acc';
                case 'RP':
                    return '${pageContext.request.contextPath}/api/getall/rp';
                case 'PP':
                    return '${pageContext.request.contextPath}/api/getall/pp';
                case 'OS':
                    return '${pageContext.request.contextPath}/api/getall/os';
                default:
                    console.error('Invalid management type:', managementType);
                    return null;
            }
        }
        // Function to display API response in a table
       function displayResponseInTable(response, trainingId, venueId, managementType) {
    	   const table =document.getElementById("main");
    	   table.style.display = "table";
    	   
    	   document.getElementById("cc").style.display = "none";
           document.getElementById("acc").style.display = "none";
           document.getElementById("os").style.display = "none";
           document.getElementById("rp").style.display = "none";
           document.getElementById("pp").style.display = "none";  
    const tbody = document.getElementById('mappingTableBody');
    tbody.innerHTML = ''; // Clear previous content
    let slno = 1; // Initialize slno counter
    const managementType1 = document.getElementById('dropdown').value;
    if (Array.isArray(response)) {
        // Response is an array
        response.forEach(item => {
            const row = document.createElement('tr');
            // Populate the Slno.
            const slnoCell = createTableCell(slno++);
            row.appendChild(slnoCell);
            // Populate other fields based on management type
            switch (managementType) {
                case 'CC':
                    populateCCFields(row, item);
                    break;
                case 'ACC':
                    populateACCFields(row, item);
                    break;
                case 'RP':
                    populateRPFields(row, item);
                    break;
                case 'PP':
                    populatePPFields(row, item);
                    break;
                case 'OS':
                    populateOSFields(row, item);
                    break;
                default:
                    console.error('Invalid management type:', managementType);
                    return;
            }
            // Create Action buttons
            const actionCell = document.createElement('td');
            const deleteButton = createActionButton('Delete', trainingId, venueId, item[managementType.toLowerCase() + 'treasuryid'], 'deleteButtonClicked');
            actionCell.appendChild(deleteButton);
            row.appendChild(actionCell);
            // Append the row to the table body
            tbody.appendChild(row);
        });
    } else {
        // Response is an object
        const row = document.createElement('tr');
        const slnoCell = createTableCell(slno);
        const messageCell = createTableCell('No data available');
        messageCell.colSpan = 8; // Span the message cell across all columns
        row.appendChild(slnoCell);
        row.appendChild(messageCell);
        tbody.appendChild(row);
    }
}
       function createActionButton(label, trainingId, venueId, treasuryId, clickHandler) {
           const button = document.createElement('button');
           button.textContent = label;
           // Add event listener to handle click event
           button.addEventListener('click', function() {
               // Call the specified button click handler function
               window[clickHandler](trainingId, venueId, treasuryId);
           });
           return button;
       }
// Functions to populate fields for each management type
function populateCCFields(row, item) {
    const cctreasuryidCell = createTableCell(item.cctreasuryid);
    const ccnameCell = createTableCell(item.ccname);
    const ccdistrictCell = createTableCell(item.ccdistrict);
    const ccmandalCell = createTableCell(item.ccmandal);
    const ccdesignationCell = createTableCell(item.ccdesignation);
    const ccemailCell = createTableCell(item.ccemail);
    const ccmobileCell = createTableCell(item.ccmobile);
    // Append cells to the row
    row.appendChild(cctreasuryidCell);
    row.appendChild(ccnameCell);
    row.appendChild(ccdistrictCell);
    row.appendChild(ccmandalCell);
    row.appendChild(ccdesignationCell);
    row.appendChild(ccemailCell);
    row.appendChild(ccmobileCell);
}
function populateACCFields(row, item) {
    const acctreasuryidCell = createTableCell(item.acctreasuryid);
    const accnameCell = createTableCell(item.accname);
    const accdistrictCell = createTableCell(item.accdistrict);
    const accmandalCell = createTableCell(item.accmandal);
    const accdesignationCell = createTableCell(item.accdesignation);
    const accemailCell = createTableCell(item.accemail);
    const accmobileCell = createTableCell(item.accmobile);
    // Append cells to the row
    row.appendChild(acctreasuryidCell);
    row.appendChild(accnameCell);
    row.appendChild(accdistrictCell);
    row.appendChild(accmandalCell);
    row.appendChild(accdesignationCell);
    row.appendChild(accemailCell);
    row.appendChild(accmobileCell);
}
function populateRPFields(row, item) {
	    const rptreasuryidCell = createTableCell(item.rptreasuryid);
	    const rpnameCell = createTableCell(item.rpname);
	    const rpdistrictCell = createTableCell(item.rpdistrict);
	    const rpmandalCell = createTableCell(item.rpmandal);
	    const rpdesignationCell = createTableCell(item.rpdesignation);
	    const rpemailCell = createTableCell(item.rpemail);
	    const rpmobileCell = createTableCell(item.rpmobile);
	    // Append cells to the row
	   	row.appendChild(rptreasuryidCell);
	    row.appendChild(rpnameCell);
	    row.appendChild(rpdistrictCell);
	    row.appendChild(rpmandalCell);
	    row.appendChild(rpdesignationCell);
	    row.appendChild(rpemailCell);
	    row.appendChild(rpmobileCell);
}
function populatePPFields(row, item) {    
	const pptreasuryidCell = createTableCell(item.pptreasuryid);
    const ppnameCell = createTableCell(item.ppname);
    const ppdistrictCell = createTableCell(item.ppdistrict);
    const ppmandalCell = createTableCell(item.ppmandal);
    const ppdesignationCell = createTableCell(item.ppdesignation);
    const ppemailCell = createTableCell(item.ppemail);
    const ppmobileCell = createTableCell(item.ppmobile);
    // Append cells to the row
   	row.appendChild(pptreasuryidCell);
    row.appendChild(ppnameCell);
    row.appendChild(ppdistrictCell);
    row.appendChild(ppmandalCell);
    row.appendChild(ppdesignationCell);
    row.appendChild(ppemailCell);
    row.appendChild(ppmobileCell);
}
function populateOSFields(row, item) {
			const ostreasuryidCell = createTableCell(item.ostreasuryid);
    const osnameCell = createTableCell(item.osname);
    const osdistrictCell = createTableCell(item.osdistrict);
    const osmandalCell = createTableCell(item.osmandal);
    const osdesignationCell = createTableCell(item.osdesignation);
    const osemailCell = createTableCell(item.osemail);
    const osmobileCell = createTableCell(item.osmobile);
    // Append cells to the row
     row.appendChild(ostreasuryidCell); 
    row.appendChild(osnameCell);
    row.appendChild(osdistrictCell);
    row.appendChild(osmandalCell);
    row.appendChild(osdesignationCell);
    row.appendChild(osemailCell);
    row.appendChild(osmobileCell);
}
function createTableCell(text) {
    const cell = document.createElement('td');
    cell.textContent = text;
    return cell;
}
    function deleteButtonClicked(trainingId, venueId, treasuryId) {
            // Display a confirmation dialog box to the user
            const confirmed = confirm("Are you sure you want to delete this item?");
            // Check if the user confirmed the action
            if (confirmed) {
                const management = document.getElementById('dropdown').value;
                const deleteApiUrl = '${pageContext.request.contextPath}/api/' + management.toLowerCase() + '/deactivate?trainingid=' + trainingId + '&venueid=' + venueId + '&cctreasuryid=' + treasuryId;
                $.ajax({
                    type: 'PUT',
                    url: deleteApiUrl,
                    success: function(response) {
                        console.log('Delete API call successful:', response);
                        // Optionally, perform any UI update after successful deletion
                        // For example, remove the corresponding row from the table if it's a dynamic table
                        alert("Deleted Operation Successfull ! ! !")
                    },
                    error: function(error) {
                        console.error('Error calling delete API:', error);
                    }
                });
            } else {
                // If the user cancels, do nothing
                console.log("Delete operation cancelled by the user.");
            }
        } 
    
    
    function displayResponseInDifferentTable(response, selectedTrainingId, selectedVenueId) {
        // Hide the main table
        document.getElementById("main").style.display = "none";

        // Show all tables
        document.getElementById("downloadbuttons").style.display = "block";
        document.getElementById("cc").style.display = "block";
        document.getElementById("acc").style.display = "block";
        document.getElementById("os").style.display = "block";
        document.getElementById("rp").style.display = "block";
        document.getElementById("pp").style.display = "block";

        // Populate data for CC table
        populateTable(response, 'CC', 'CCTableBody');

        // Populate data for ACC table
        populateTable(response, 'ACC', 'ACCTableBody');

        // Populate data for RP table
        populateTable(response, 'RP', 'RPTableBody');

        // Populate data for PP table
        populateTable(response, 'PP', 'PPTableBody');

        // Populate data for OS table
        populateTable(response, 'OS', 'OSTableBody');
    }

    function populateTable(response, managementType, tableBodyId) {
        // Get the table body element
        const tableBody = document.getElementById(tableBodyId);
        // Clear previous content from the table body
        tableBody.innerHTML = '';

       

        // Initialize serial number
        let slno = 1;

        // Iterate over each item in the response array
        response.forEach(item => {
            // Create a new row for each entry
            const row = document.createElement('tr');

            // Populate the row based on the management type
            if (getManagementType(item) === managementType) {
                populateRow(row, item, tableBodyId, slno++);
                tableBody.appendChild(row);
            }
        });
    }

    function populateRow(row, item, tableBodyId, slno) {
        // Populate the serial number cell
        const slnoCell = document.createElement('td');
        slnoCell.textContent = slno;
        row.appendChild(slnoCell);

        // Populate other cells based on the specified properties
        const properties = getPropertiesForManagementType(tableBodyId);
        properties.forEach(property => {
            const cell = document.createElement('td');
            cell.textContent = item[property];
            row.appendChild(cell);
        });

        // Add a delete button in the action column
//         const deleteCell = document.createElement('td');
//         const deleteButton = document.createElement('button');
//         deleteButton.textContent = 'Delete';
//         deleteButton.addEventListener('click', () => {
//             // Call a function to handle the deletion
//             handleDelete(row);
//         });
//         deleteCell.appendChild(deleteButton);
//         row.appendChild(deleteCell);
     }

    function getPropertiesForManagementType(tableBodyId) {
        switch (tableBodyId) {
            case 'CCTableBody':
                return ['cctreasuryid', 'ccname', 'ccdistrict', 'ccmandal', 'ccdesignation', 'ccemail', 'ccmobile'];
            case 'ACCTableBody':
                return ['acctreasuryid', 'accname', 'accdistrict', 'accmandal', 'accdesignation', 'accemail', 'accmobile'];
            case 'RPTableBody':
                return ['rptreasuryid', 'rpname', 'rpdistrict', 'rpmandal', 'rpdesignation', 'rpemail', 'rpmobile'];
            case 'PPTableBody':
                return ['pptreasuryid', 'ppname', 'ppdistrict', 'ppmandal', 'ppdesignation', 'ppemail', 'ppmobile'];
            case 'OSTableBody':
                return ['ostreasuryid', 'osname', 'osdistrict', 'osmandal', 'osdesignation', 'osemail', 'osmobile'];
            default:
                console.error('Invalid table body ID:', tableBodyId);
                return [];
        }
    }

    // Function to determine the management type based on item properties
    function getManagementType(item) {
        if (item.hasOwnProperty('cctreasuryid')) {
            return 'CC';
        } else if (item.hasOwnProperty('acctreasuryid')) {
            return 'ACC';
        } else if (item.hasOwnProperty('rptreasuryid')) {
            return 'RP';
        } else if (item.hasOwnProperty('pptreasuryid')) {
            return 'PP';
        } else if (item.hasOwnProperty('ostreasuryid')) {
            return 'OS';
        } else {
            console.error('Unable to determine management type for item:', item);
            return null;
        }
    }

    </script>
</body>
</html>
