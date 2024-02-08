<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Component Resource Limit</title>
    
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    <style>
        body {
            display: flex;
            justify-content: center;
        }

        form {
            max-width: 600px;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }

        .form-column {
            float: left;
            width: 45%;
            margin-right: 5%;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .buttons {
            text-align: center;
            clear: both;
            margin-top: 15px;
            border: none;
            cursor: pointer;
        }

        button {
            width: 120px;
            padding: 10px;
            border: none;
            cursor: pointer;
            background-color: #4caf50;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <div class="container" align="center">
        <h1>Edit Vendor Limit</h1>
        <form id="myForm" class="text-left" onsubmit="return submitForm()">
            <div class="form-row">
                <div class="form-column">
                    <label for="vendorName">Vendor Name:</label>
                    <input type="text" id="vendorName" required>
                    <label for="approved_rate">Approved Rate:</label>
                    <input type="text" id="approved_rate" required>
                </div>
                <div class="form-column">
                    <label for="budgeted_year">Budgeted Year</label>
                    <input type="text" id="budgeted_year" placeholder="Enter Budgeted year" readonly>
                    <label for="unit">Unit:</label>
                    <select id="unit" required></select>
                </div>
                  <div class="form-column">
                    <label for="actual_rate">Actual Rate:</label>
                    <input type="text" id="actual_rate" required>
                </div>
                <div class="buttons">
                    <button type="submit" class="btn btn-primary" id="updateButton">Update</button>
                    &nbsp;
                    <button type="button" class="btn btn-danger" onclick="closeForm()" id="exitButton">Close</button>
                </div>
            </div>
        </form>
    </div>

    <script>
        $(document).ready(function () {
            
            editCLimit();
        
            window.submitForm = function() {
                var isConfirmed = confirm("Are you sure you want to edit this training?");
                if (isConfirmed) {
                    updateComponentData();
                }
                return false;
            }
        });

        

        function updateComponentData() {
            var sl = getUrlParameter('sl');
            var formData = {
                vendorName: $("#vendorName").val(),
                approvedrate: $("#approved_rate").val(),
                actualrate: $("#actual_rate").val(),
                budgetedYear: $("#budgeted_year").val(),
                unit: $("#unit").val()
            };
            $.ajax({
                type: "PUT",
                url: "${pageContext.request.contextPath}/api/updateVendorLimit/" + sl,
                contentType: "application/json",
                data: JSON.stringify(formData),
                success: function(response) {
                    console.log(response);
                    toastr.success("Data updated successfully");
                    setTimeout(function() {
                        window.location.href = "${pageContext.request.contextPath}/VendorLimit.jsp";
                    }, 1000);
                },
                error: function(xhr, status, error) {
                    console.error("API request error: " + error);
                    toastr.error("Failed to update data");
                }
            });
            return false;
        }

        function closeForm() {
            window.location.href = "${pageContext.request.contextPath}/VendorLimit.jsp";
        }

        function editCLimit() {
            var sl = getUrlParameter('sl');
            if (sl) {
                $.ajax({
                    type: "GET",
                    url: "${pageContext.request.contextPath}/api/getbyVendorLimitid/" + sl,
                    dataType: "json",
                    success: function(data) {
                        const unit = $('#unit');
						unit.empty();
			            unit.append('<option value="' + (data.unit).trim() + '">' + (data.unit).trim() + '</option>');
			            if((data.unit).trim() === "Per Day"){
			            	console.log("pd");
			            	unit.append('<option value="LumpSum">LumpSum</option>');
			            }else{
			            	console.log("ls");
			            	unit.append('<option value="Per Day">Per Day</option>');
			            }
                        $('#vendorName').val(data.vendorName); // Assuming sl is a property of the first item
                        $('#budgeted_year').val(data.budgetedYear); // Assuming budgetedYear is a property of the first item
                        $('#approved_rate').val(data.approvedrate); // Adjust this according to your data structure
                        $('#actual_rate').val(data.actualrate); // Adjust this according to your data structure

                        $('#myForm').show();
                    

                    },
                    error: function(xhr, status, error) {
                        console.error('Error fetching venue data:', xhr.responseText);
                        alert('Error fetching venue data. Please check the console for details.');
                    }
                });
            } else {
                alert('ID not provided in the URL.');
            }
        }

        function getUrlParameter(name) {
            name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
            var regex = new RegExp("[\\?&]" + name + "=([^&#]*)");
            var results = regex.exec(location.search);
            return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
        }
    </script>
</body>
</html>
