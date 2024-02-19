<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

    <!-- Add this script tag after including Toastr CSS -->
    <script
        src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    <!-- Core theme CSS (includes Bootstrap)-->
    <script
        src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.3/xlsx.full.min.js"></script>
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- Add this in the head section of your HTML file -->
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
    <script
        src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
</head>

<style>
    .serial-column {
        font-weight: bold;
    }

    .table thead th {
        background-color: #007bff;
        color: #fff;
        font-weight: bold;
        border-color: #007bff;
    }

    .table tbody td {
        border-color: #007bff;
    }

    .table tbody tr:hover {
        background-color: #f1f1f1;
    }
    #trainingName {
        font-size: 1.5rem;
        color: #007bff;
        margin-bottom: 20px;
        text-transform: uppercase;
    }
    .fixed-buttons {
        position: fixed;
        bottom: 20px;
        right: 40%;
        display: flex;
        gap: 10px;
        font-size: 20px;
    }
  #trainingAndVenue {
            font-size: 1.5rem;
            color: #007bff; /* Blue color, you can change it to your preferred color */
            margin-bottom: 20px;
            text-transform: uppercase;
        }
    /* Optional styles for the buttons */
    .fixed-buttons button {
        padding: 10px 20px;
    }
    
    
    .custom-dropdown {
    position: relative;
    width: 100%;
}

.custom-dropdown select {
    width: 100%;
    padding: 10px;
    border-radius: 5px;
    border: 1px solid #ccc;
    background-color: #fff;
    appearance: none; /* Remove default arrow */
    -webkit-appearance: none;
    -moz-appearance: none;
    cursor: pointer;
}

.custom-dropdown select:focus {
    outline: none;
}

.custom-dropdown .arrow {
    position: absolute;
    top: calc(50% - 5px);
    right: 10px;
    width: 0;
    height: 0;
    border-left: 5px solid transparent;
    border-right: 5px solid transparent;
    border-top: 5px solid #555;
    pointer-events: none; /* Ensure the arrow doesn't interfere with dropdown interaction */
}
    
</style>

<!--      ########## Data-table ########## -->
<link rel="stylesheet" type="text/css"
    href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
<body>



<div class="container mt-2">
    <div class="row">
        <div class="col-md-6">
            <label for="trainingDropdown">Select Training:</label>
            <div class="custom-dropdown">
                <select id="trainingDropdown" onchange="search()">
                    <option value="" disabled selected>Select a Training</option>
                    <!-- Add options dynamically using JavaScript -->
                </select>
                <span class="arrow"></span>
            </div>
        </div>
        <div class="col-md-6">
            <label for="venueDropdown">Select Venue:</label>
            <div class="custom-dropdown">
                <select id="venueDropdown" onchange="search()">
                    <option value="" disabled selected>Select a Venue</option>
                    <!-- Add options dynamically using JavaScript -->
                </select>
                <span class="arrow"></span>
            </div>
        </div>
    </div>
</div>



    <div class="card mt-2" style="width: 100%;">
            <h3 class="text-center" id="trainingAndVenue"></h3>
        </div>
            <div class="table-responsive">
                <table class="table table-bordered" id="trainingTable" style="font-size: 14px;">
                    <thead>
                        <tr>
                            <th>Sl no</th>
                            <th style="display: none;">Id</th>
                            <th>Budgeted Year</th>
                            <th>Training Id </th>
                            <th>Venue Id </th>
                            <th>Component</th>
                            <th>Estimated Amount</th>
                            <th>Actual Amount</th>
                            <th>Additonal Amount</th>
                            <th>Approved Amount</th>
                            <th>Trainee Role</th>
                            <th>Frequency</th>
                            <th>Unit</th>
                            <th>Per Unit Amount</th>
                            <th>recordstatus</th>
                        </tr>
                    </thead>
                    <tbody></tbody>
                </table>
<!--                 <div> -->
<!--                     <button class="btn btn-success" id="approveButton" style="font-size: 14px;" onclick="approveTraining();">Approved</button> -->
<!--                     <button class="btn btn-danger" id="rejectButton" style="font-size: 14px;" onclick="rejectTraining();">Rejected</button> -->
<!--                 </div> -->
            </div>
           <div class="button-container d-flex">
    <div class="mr-auto" style="margin-left: 80%;">
        <button class="btn btn-success" id="approveButton" style="font-size: 14px;" onclick="approveTraining();">Approve</button>
        <button class="btn btn-danger" id="rejectButton" style="font-size: 14px;" onclick="rejectTraining();">Reject</button>
    </div>
</div>
        
    <script>
    
    
    $(document).ready(function() {
        // Fetch training names from the API endpoint
        $.ajax({
            type: "GET",
            url: "${pageContext.request.contextPath}/api/mapping/training/venue",
            success: function(data) {
                const trainingDropdown = $("#trainingDropdown");
                const venueDropdown = $("#venueDropdown");
                trainingDropdown.append('<option value="" disabled selected>Select a Training</option>'); // Clear previous content
                venueDropdown.append('<option value="" disabled selected>Select a Venue</option>'); // Clear previous content

                $.each(data, function(index, training) {
                    trainingDropdown.append($('<option>', {
                        value: training.trainingid,
                        text: training.trainingname
                    }));
                    venueDropdown.append($('<option>', {
                        value: training.venueid,
                        text: training.vname
                    }));
                });
            },
            error: function(error) {
                console.error('Error fetching training data:', error);
            }
        });
    });

        
    function search() {
        var selectedTraining = $("#trainingDropdown").val();
        var selectedVenue = $("#venueDropdown").val();

        console.log(selectedTraining +" ----tcvb---"+   selectedVenue);
        
        // Iterate through each row in the table
        $("#trainingTable tbody tr").each(function() {
            var trainingId = $(this).find("td:eq(3)").text(); // Assuming trainingId is in the fourth column
            var venueId = $(this).find("td:eq(4)").text(); // Assuming venueId is in the fifth column

            // Check if the row matches the selected values in the dropdowns
            if ((selectedTraining === "" || trainingId === selectedTraining) &&
                (selectedVenue === "" || venueId === selectedVenue)) {
                // Show the row if it matches
                $(this).show();
            } else {
                // Hide the row if it doesn't match
                $(this).hide();
            }
        });
    }

    
    
    
    
    function rejectTraining(){
    	 alert("Training  Budget Rejected successfully!");
        window.location.href="${pageContext.request.contextPath}/dashboard.jsp";

    }
    	
        var trainingMappingBudgetArray = [];        
        var actualAmount;
        var resultText;// Define the variable
        fetchDataAndDisplay();
        function fetchDataAndDisplay() {
            $.ajax({
                type: "GET",
                url: "${pageContext.request.contextPath}/api/mapping/budget",
                dataType: "json",
                success: function (data) {
                    displayTrainingData(data);
                },
                error: function (xhr, status, error) {
                    console.error("API request error: " + error);
                    toastr.error("Failed to fetch training data");
                }
            });
        }
        function displayTrainingData(data) {
            var trainings = data;
            trainings.reverse();
            var tableBody = $("#trainingTable tbody");
            tableBody.empty();
            var totalAdditionalBudget = 0;
            var totalSanctionedBudget = 0;
            var totalEstimatedBudget = 0;
            for (var i = 0; i < trainings.length; i++) {
                var training = trainings[i];
                var additionalAmount = training.estimatedbudget - training.sanctionedbudget;
                totalAdditionalBudget += additionalAmount;
                totalSanctionedBudget += training.sanctionedbudget;
                totalEstimatedBudget += training.estimatedbudget;
                var trainingName = trainings.length > 0 ? trainings[0].trainingname : "Unknown Training";
                var venueName = trainings.length > 0 ? trainings[0].vname : "Unknown Venue";
               // $("#trainingAndVenue").text(trainingName + "  ,     " + venueName);
                // Display training name in the table heading
                if (i === 0) {
                    $("#trainingName").text(training.trainingname);
                }
                var row = $("<tr></tr>");
                row.append("<td class='serial-column'>" + (i + 1) + "</td>");
                row.append("<td class='sl' style='display: none;'>" + training.sl + "</td>");
                row.append("<td>" + training.budgetedyear + "</td>");
                row.append("<td>" + training.trainingid + "</td>");
                row.append("<td>" + training.venueid + "</td>");
                row.append("<td>" + training.tcname + "</td>");
                row.append("<td class='estimated-budget'>" + training.estimatedbudget + "</td>");
                row.append("<td class='sanctioned-budget'>" + training.sanctionedbudget + "</td>");
                row.append("<td>" + training.additionalbudget + "</td>");
                row.append("<td>" + training.approvedbudget + "</td>");
                row.append("<td>" + training.traineerole + "</td>");
                row.append("<td>" + training.frequency + "</td>");
                row.append("<td>" + training.unit + "</td>");
                row.append("<td>" + training.amount + "</td>");
                row.append("<td class='recordstatus'>" + training.recordstatus + "</td>");  
                tableBody.append(row);
                trst=training;
            }
            // Calculate total estimated budget
            var totalEstimatedBudgetForRow = 0;
            $('.estimated-budget').each(function () {
                totalEstimatedBudgetForRow += parseInt($(this).text(), 10);
            });
            var totalSanctionedBudgetForRow = 0;
            $('.sanctioned-budget').each(function () {
                totalSanctionedBudgetForRow += parseInt($(this).text(), 10);
            });
            var totalAdditionalBudgetForRow = 0;
            $('.additional-budget').each(function () {
                totalAdditionalBudgetForRow += parseInt($(this).text(), 10);
            });
            // Display total row
            var totalRow = $("<tr></tr>");
            totalRow.append("<td></td>"); // Empty cell for serial-column
            totalRow.append("<td>Total</td>");
            totalRow.append("<td></td>"); // Empty cells for non-numeric columns
            totalRow.append("<td></td>");
            totalRow.append("<td></td>");
            totalRow.append("<td id='totalEstimatedBudgetForRow'>" + totalEstimatedBudgetForRow.toLocaleString() + "</td>"); // Display formatted total estimated budget for rows
            totalRow.append("<td id='totalSanctionedBudgetForRow'>" + totalSanctionedBudgetForRow.toLocaleString() + "</td>"); // Display formatted total sanctioned budget
            tableBody.append(totalRow);
        }
        function editTraining(slno) {
            // Construct the URL with the slno parameter
            var editUrl = '${pageContext.request.contextPath}/editbudgetmapping.jsp?slno=' + encodeURIComponent(slno);
            // Redirect to the edit page
            window.location.href = editUrl;
        }
        var trst;
        function approveTraining() {
            var approvedDataArray = [];
            var totalActualAmount=0;
            // Iterate through each row in the table
            $("#trainingTable tbody tr").each(function () {
                // Extract the estimated and actual amounts from the current row
                var estimatedAmount = parseInt($(this).find(".estimated-budget").text(), 10);
                var actualAmount = parseInt($(this).find(".sanctioned-budget").text(), 10);
                var slId = parseInt($(this).find(".sl").text(), 10);
               // var recordStatus = trst.recordstatus;
                var recordStatus = $(this).find(".recordstatus").text().trim().toLowerCase();
             console.log(recordStatus);
                // Calculate the difference between estimated and actual amounts
                var difference = actualAmount - estimatedAmount;
                // Display the result with the appropriate symbol
                var resultText = (difference >= 0) ? '+' + difference : difference;
                console.log(resultText);
                // Add actual amount to the total
                totalActualAmount += actualAmount;
             // Determine the record status
            var status = '';
              if (recordStatus === 'approved' || recordStatus === 'waiting for next approval'|| recordStatus ==='delivered' ) {
                  status = 'delivered';
              } else if (recordStatus === 'to be approved') {
                  status = 'approved';
              } else {
                  // Handle other cases if needed
              }
                // Add actual amount and result text to the array
                approvedDataArray.push({
                	approvedbudget: actualAmount,
                    additionalbudget: resultText,
                    sl: slId,
                    recordstatus:status
                });
            });
            // Get the trainingId and venueId from the first row
            var trainingId = $("#trainingTable tbody tr:first-child td:eq(3)").text();
            var venueId = $("#trainingTable tbody tr:first-child td:eq(4)").text();
            // Prepare the data object
            var data = approvedDataArray;
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/api/mapping/approve/" + trainingId + "/" + venueId,
                contentType: "application/json",
                data: JSON.stringify(data),
                success: function () {
                    toastr.success("Training Budget Approved successfully!");
                    alert("Training Budget Approved Successfully!");
                    window.location.href="${pageContext.request.contextPath}/dashboard.jsp";
                },
                error: function (xhr, status, error) {
                    console.error("API request error: " + error);
                    toastr.error("Failed to approve training");
                }
            });
        }
    </script>
    </body>
</html>
