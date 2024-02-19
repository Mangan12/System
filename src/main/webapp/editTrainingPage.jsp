<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 
<head>
<meta charset="UTF-8" />
<title>Edit Training</title>
<!-- Include jQuery -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<!-- Include Toastr CSS and JS -->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
 
 
<!-- <script src=" https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script> -->
<!-- <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" /> -->
<link href="css/styles.css" rel="stylesheet" />
<style>
body {
	font-family: "Arial", sans-serif;
	background-color: #f8f9fa;
	margin: 0;
	padding: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
}
 
form {
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
 
h2 {
	width: 100%;
	text-align: center;
	color: #007bff;
	margin-bottom: 20px;
}
 
label {
	/*       width: calc(25% - 20px); */
	display: block;
	margin-bottom: 8px;
	color: #495057;
}
 
input {
	/*       width: calc(100% - 16px); */
	padding: 8px;
	margin-bottom: 16px;
	box-sizing: border-box;
	border: 1px solid #ced4da;
	border-radius: 4px;
	font-size: 14px;
}
 
button {
	background-color: #007bff;
	color: #fff;
	padding: 10px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	margin-top: 10px;
	margin-left: 10px;
}
 
button[type="submit"] {
	background-color: #28a745;
}
 
button[type="button"] {
	background-color: #dc3545;
}
 
.form-group {
	width: 20%;
	margin-left: 3rem;
}
</style>
</head>
 
<body>
	<form id="updateForm" action="updateTraining" method="post">
		<h2>Edit Training</h2>
 
		<!--########### Row 1 #############-->
		<div class="row">
			<div class="form-group col-md-3">
				<label for="refplannerid">Training plannerId:</label>
				<div class="form-floating">
					<input type="text" id="refplannerid" name="refplannerid"
						readonly="readonly" />
				</div>
			</div>
			<div class="form-group col-md-3">
				<label for="tsubject">Training Subject:</label>
				<div class="form-floating">
					<input type="text" id="tsubject" name="tsubject" />
				</div>
			</div>
			<div class="form-group col-md-3">
				<label for="tcategory">Training Category:</label>
				<div class="form-floating">
					<select id="tcategory" name="tcategory" style="width: 100%; height:35px; overflow: none;" ></select>
				</div>
			</div>
			<div class="form-group col-md-3">
				<label for="tmode">Training Mode:</label>
				<div class="form-floating">
					<select id="tmode" name="tmode" style="width: 100%; height:35px; overflow: none;" ></select>
				</div>
			</div>
		</div>
 
		<!--########### Row 2 #############-->
		<div class="row">
			<div class="form-group col-md-3">
				<label for="ttargetgroup">Target Group:</label>
				<div class="form-floating">
					<select id="ttargetgroup" name="ttargetgroup" style="width: 100%; height:35px; overflow: none;"></select>
				</div>
			</div>
			<div class="form-group col-md-3">
				<label for="tmonth">Training Month:</label>
				<div class="form-floating">
					<select id="tmonth" name="tmonth" style="width: 100%; height:35px; overflow: none;"></select>
				</div>
			</div>
			<div class="form-group col-md-3">
				<label for="tyear">Training Year:</label>
				<div class="form-floating">
					<select id="tyear" name="tyear" style="width: 100%; height:35px; overflow: none;"></select>
				</div>
			</div>
			<div class="form-group col-md-3">
				<label for="tname">Training Name:</label>
				<div class="form-floating">
					<input style="width: 100%" type="text" id="tname" name="tname" />
				</div>
			</div>
		</div>
 
		<!--########### Row 3 #############-->
		<div class="row">
			<div class="form-group col-md-3">
				<label for="tdescription">Description:</label>
				<div class="form-floating">
					<input type="text" id="tdescription" name="tdescription" />
				</div>
			</div>
			<div class="form-group col-md-3">
				<label for="tgrade">Grade:</label>
				<div class="form-floating">
					<select id="tgrade" name="tgrade" style="width: 100%; height:35px; overflow: none;"></select>
				</div>
			</div>
			<div class="form-group col-md-3">
				<label for="tagency">Agency:</label>
				<div class="form-floating">
					<select id="tagency" name="tagency" style="width: 100%; height:35px; overflow: none;"></select>
				</div>
			</div>
			<div class="form-group col-md-3">
				<label for="tspell">Training Spell:</label>
				<div class="form-floating">
					<select id="tspell" name="tspell" style="width: 100%; height:35px; overflow: none;"></select>
				</div>
			</div>
		</div>
 
		<!--########### Row 4 #############-->
		<div class="row">
			<div class="form-group col-md-3">
				<label for="preferdlocation">Preferred Location:</label>
				<div class="form-floating">
					<select id="preferdlocation" style="width: 100%; height:35px; overflow: none;" name="preferdlocation"></select>
				</div>
			</div>
			<div class="form-group col-md-3">
				<label for="numberofstakeholder">No. Of Stakeholders:</label>
				<div class="form-floating">
					<input type="text" id="numberofstakeholder"
						name="numberofstakeholder" />
				</div>
			</div>
			<div class="form-group col-md-3">
				<label for="numberdayneeded">No. Of Day Needed:</label>
				<div class="form-floating">
					<input type="text" id="numberdayneeded" name="numberdayneeded" />
				</div>
			</div>
			<div class="form-group col-md-3">
				<label for="thoursperday">Hours per Day:</label>
				<div class="form-floating">
					<input type="text" style="width: 100%" id="thoursperday" name="thoursperday" />
				</div>
			</div>
		</div>
 
		<!--########### Row 1 #############-->
		<div class="row">
			<div class="form-group col-md-3">
				<label for="totalhours">Total Hours:</label>
				<div class="form-floating">
					<input type="text" id="totalhours" name="totalhours" />
				</div>
			</div>
			<div class="form-group col-md-3">
				<label for="trainingregstartdt">Tentative Start Date:</label>
				<div class="form-floating">
					<input type="text" id="trainingregstartdt"
						name="trainingregstartdt" />
				</div>
			</div>
			<div class="form-group col-md-3">
				<label for="trainingregenddt">Tentative End Date:</label>
				<div class="form-floating">
					<input type="text" id="trainingregenddt" name="trainingregenddt" />
				</div>
			</div>
			<div class="form-group col-md-3">
				<label for="tstatus">Training Status:</label>
				<div class="form-floating">
					<select id="tstatus" style="width: 100%; height:35px; overflow: none;" name="tstatus"></select>
				</div>
			</div>
		</div>
		<button type="button" style="width: 9%; margin-left: 35%"
			onclick="cancelUpdate()">Cancel</button>
		<button type="submit" style="width: 9%">Update</button>
	</form>
 
	<script>
		toastr.options = {
			progressBar : true,
			timeOut : 2000,
			positionClass : "toast-bottom-right",
		};
 
		function fetchdata(endpoint, id, key, value) {
		    apiCall("${pageContext.request.contextPath}"+ endpoint, "GET", "json", id, key, value);
		}
		
		function apiCall(url, type, dataType, id, key, value) {
		    $.ajax({
		        url: url,
		        type: type,
		        dataType: dataType,
		        success: function(data) {
		            console.log(id,data);
		            var dropdown = $('#' + id);
		            $.each(data, function(index, item) {
		                if (item[key] === value) {
		                    return;
		                }
		                dropdown.append($("<option>").val(item[key]).text(item[key]));
		            });
		        },
		        error: function(xhr, status, error) {
		            console.log("Error fetching data:", error);
		        }
		    });
		}
		function populateYears(year) {
		    const tyear = $('#tyear');
		    const currentYear = new Date().getFullYear();
		    const endYear = 2040;
		    for (let i = currentYear; i <= endYear; i++) {
		    	if ((i.toString()) === year) {
		            continue;
		        }
		        tyear.append('<option value="' + i + '">' + i + '</option>');
		    }
		}
 
		function populateMonths(selectedYear) {
			const monthToSkip=$('#tmonth').val();
			 console.log( monthToSkip);
		    const tmonth = $('#tmonth');
		    const currentYear = new Date().getFullYear();
		    const currentMonthIndex = new Date().getMonth();
		    const months = [
		        'January', 'February', 'March', 'April', 'May', 'June',
		        'July', 'August', 'September', 'October', 'November', 'December'
		    ];
		    if (selectedYear == currentYear) {
		        // If the selected year is the current year, start from the current month
		        for (let i = currentMonthIndex; i < months.length; i++) {
		        	if ((months[i].toString()) === monthToSkip) {
			             continue; // Skip this iteration
			         }
		            tmonth.append('<option value="' + months[i] + '">' + months[i] + '</option>');
		        }
		    } else {
		        // Otherwise, show all months
		        months.forEach(function(month) {
		        	if (month === monthToSkip) {
			             return; // Skip this iteration
			         }
		            tmonth.append('<option value="' + month + '">' + month + '</option>');
		        });
		    }
		}
		function populateMode(modeToSkip) {
		    const tmode = $('#tmode');
		    const modes = [
		        'Online', 'Offline', 'Blended'
		    ];
 
		    modes.forEach(function(mode, index) {
		    	 if (mode === modeToSkip) {
		             return; // Skip this iteration
		         }
		        tmode.append('<option value="' + mode + '">' + mode + '</option>');
		    });
		}
		function getUrlParameter(name) {
			name = name.replace(/[[]/, '\\[').replace(/[\]]/, '\\]');
			var regex = new RegExp('[\\?&]' + name + '=([^&#]*)');
			var results = regex.exec(location.search);
			return results === null ? '' : decodeURIComponent(results[1]
					.replace(/\+/g, ' '));
		}
		function updateTraining() {
			var refId = getUrlParameter('refplannerid');
			var formData = {};
 
			$("#updateForm").find("input, select").each(function() {
			    var fieldName = $(this).attr("name");
			    var fieldValue = $(this).val();
			    formData[fieldName] = fieldValue;
			});
 
			var jsonData = JSON.stringify(formData);
			console.log(jsonData);
			$.ajax({
				type : "PUT",
				url : "${pageContext.request.contextPath}/api/edit?refplannerid=" + encodeURIComponent(refId),
 
				contentType : "application/json", // Set content type to JSON
				data : jsonData,
				success : function(response) {
					toastr.success("Training updated successfully");
					alert('Training Calender Updated Succesfully');
 
					window.location.href = "${pageContext.request.contextPath}/AcademicCalender.jsp";
 
				},
				error : function(xhr, status, error) {
					toastr.error("Failed to update training: " + error);
				}
			});
		}
 
		$(document).ready(function() {
			$('#updateForm').hide();
			editCalender();
			console.log($('#tspell option:selected').val());
 
			$('#tspell').change(function() { console.log($('#tspell').val()) });
			$('#tyear').change(function() {
		        // Get the selected year
		        
		        var selectedYear = $(this).val();
		        console.log(selectedYear);
		        // Call the populateMonths function with the selected year
		        $('#tmonth').empty();
		        $('#tmonth').append('<option value="" disabled selected>---select month---</option>');
		        populateMonths(selectedYear);
		    });
		});
 
		function editCalender() {
			var calenderId = getUrlParameter('refplannerid');
			console.log(calenderId);
			if (calenderId) {
				$
						.ajax({
							type : "GET",
							url : "${pageContext.request.contextPath}/api/getdatabyid" ,
							data :{ refplannerid: calenderId }, // Replace with your actual endpoint
							dataType : "json",
							success : function(data) {
								console.log("jai hanuman........."+data);
								// Populate form fields with the retrieved data
								// Setting values from 'data' object to the respective form fields by their IDs
								$('#refplannerid').val(data[0].refplannerid);
								console.log("jai hanuman........."+data[0].refplannerid);
 
								Object.keys(data[0]).forEach(function(key) {
									$('#' + key).val(data[0][key]); // Use data[0][key] to access property values
							    });
								const tyear = $('#tyear');
				                tyear.append('<option value="' + data[0].tyear + '">' + data[0].tyear + '</option>');
		                		populateYears(data[0].tyear);
		                		
		                		const tmode = $('#tmode');
				                tmode.append('<option value="' + data[0].tmode + '">' + data[0].tmode + '</option>');
		                		populateMode(data[0].tmode);
		                		
				                const tmonth = $('#tmonth');
				                tmonth.append('<option value="' + data[0].tmonth + '">' + data[0].tmonth + '</option>');
				               	populateMonths(data[0].tyear);
								
				               	const tgrade = $('#tgrade');
				               	tgrade.append('<option value="' + data[0].tgrade + '">' + data[0].tgrade + '</option>');
				               	fetchdata("/api/attendGrade","tgrade","attendgrade",data[0].tgrade);
				               	
				               	const tagency = $('#tagency');
				               	tagency.append('<option value="' + data[0].tagency + '">' + data[0].tagency + '</option>');
				               	fetchdata("/api/agency","tagency","agency",data[0].tagency);
				               	
				               	const tcategory = $('#tcategory');
				               	tagency.append('<option value="' + data[0].tcategory + '">' + data[0].tcategory + '</option>');
				               	fetchdata("/api/category","tcategory","trainingcategory",data[0].tcategory);
				               	
				               	const ttargetgroup = $('#ttargetgroup');
				               	ttargetgroup.append('<option value="' + data[0].ttargetgroup + '">' + data[0].ttargetgroup + '</option>');
				               	fetchdata("/api/group","ttargetgroup","targetgroup",data[0].ttargetgroup);
				               	
				               	const tspell = $('#tspell');
				               	tspell.append('<option value="' + data[0].tspell + '">' + data[0].tspell + '</option>');
				               	fetchdata("/api/spell","tspell","spell",data[0].tspell);
				               	
				               	const preferdlocation = $('#preferdlocation');
				               	preferdlocation.append('<option value="' + data[0].preferdlocation + '">' + data[0].preferdlocation + '</option>');
				               	fetchdata("/api/search/venue","preferdlocation","vname",data[0].preferdlocation);
				               	
				               	const tstatus = $('#tstatus');
				               	tstatus.append('<option value="' + data[0].tstatus + '">' + data[0].tstatus + '</option>');
				               	fetchdata("/api/status","tstatus","status_name",data[0].tstatus);
				               	
				               	
								$('#updateForm').show();
								return;
							},
							error : function(xhr, status, error) {
								console.error('Error fetching venue data:',
										xhr.responseText);
								alert('Error fetching venue data. Please check the console for details.');
							}
						});
			} else {
				alert('Venue ID not provided in the URL.');
			}
		}
		function cancelUpdate() {
			// Redirect back to the original page or perform any other cancel action
			window.location.href = "${pageContext.request.contextPath}/AcademicCalender.jsp";
		}
 
		$("#updateForm").submit(function(event) {
			// Prevent the default form submission
			event.preventDefault();
			var isConfirmed = confirm("Are you sure you want to edit this training?");
 
			if (isConfirmed) {
				updateTraining();
				}else return;
		});
	</script>
</body>
 
</html>
