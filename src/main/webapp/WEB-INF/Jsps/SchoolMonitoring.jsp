<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Custom Form</title>
<link href="css/style2.css" rel="stylesheet" />
  </head>

  <body>
    <form style="width: 350px;">
      <div class="h1tag">
        <h1>School Complex Meeting Monitoring Form</h1>
      </div>
      <div class="container">
        <div>
          <label for="district">Enter your District:<b style="color: red">*</b></label>
          <select id="dist" name="dist" required>
            <option value="default" selected>--Select-- </option>

            <option value="Alluri Sitharama Raju">Alluri Sitharama Raju</option>
            <option value="Anakapalli">Anakapalli</option>
            <option value="Ananthapuram">Ananthapuram</option>
            <option value="Annamayya">Annamayya</option>
            <option value="Bapatla">Bapatla</option>
            <option value="Chittoor">Chittoor</option>
            <option value="East Godavari">East Godavari</option>
            <option value="Eluru">Eluru</option>
            <option value="Guntur">Guntur</option>
            <option value="Kakinada">Kakinada</option>
            <option value="Konaseema">Konaseema</option>
            <option value="Krishna">Krishna</option>
            <option value="Krishna">Kurnool</option>
            <option value="Manyam">Manyam</option>
            <option value="Nandyal">Nandyal</option>
            <option value="NTR">NTR</option>
            <option value="Palnadu">Palnadu</option>
            <option value="Prakasam">Prakasam</option>
            <option value="SPS Nellore">SPS Nellore</option>
            <option value="Sri Satyasai">Sri Satyasai</option>
            <option value="Srikakulam">Srikakulam</option>
            <option value="Tirupati">Tirupati</option>
            <option value="Visakhapatnam">Visakhapatnam</option>
            <option value="Vizianagaram">Vizianagaram</option>
            <option value="West Godavari">West Godavari</option>
            <option value="YSR Kadapa">YSR Kadapa</option>
          </select>
        </div>
        <div>
          <label for="mandal">Select your Mandal:<b style="color: red">*</b></label>
          <select id="mandal" name="mandal" required>
            <option value="default" selected>--Select-- </option>

            <option value="ANAKAPALLI">ANAKAPALLI</option>
            <option value="ATCHUTAPURAM">ATCHUTAPURAM</option>
            <option value="BUTCHIAHPETA">BUTCHIAHPETA</option>
            <option value="CHEEDIKADA">CHEEDIKADA</option>
            <option value="CHODAVARAM">CHODAVARAM</option>
            <option value="DEVARAPALLI">DEVARAPALLI</option>
            <option value="GOLUGONDA">GOLUGONDA</option>
            <option value="K.KOTAPADU">K.KOTAPADU</option>
            <option value="BUTCHIAHPETA">BUTCHIAHPETA</option>
            <option value="BUTCHIAHPETA">BUTCHIAHPETA</option>
            <option value="BUTCHIAHPETA">BUTCHIAHPETA</option>
            <option value="BUTCHIAHPETA">BUTCHIAHPETA</option>
          </select>
        </div>
      </div>
      <div class="container2">
        <div class="detailspage">
          <div>
            <label for="complexName">School Complex Name <b style="color: red">*</b>:</label>
            <input
              type="text"
              id="complexName"
              name="complexName"
              placeholder="School Complex Name...."
              required
            />
          </div>
          <div>
            <label for="complexCode"
              >School Complex Code <b style="color: red">*</b> :</label
            >
            <input
              type="text"
              id="complexCode"
              name="complexCode"
              pattern="\d{11}"
              placeholder="11 Digit Code..."
              required
            /><span style="font-size:10px"> &nbsp; &nbsp;(11 Digit Code Only)</span>
          </div>
          <div>
            <label for="complexHMName">School Complex HM name <b style="color: red">*</b>:</label>
            <input
              type="text"
              id="complexHMName"
              name="complexHMName"
              placeholder="School Complex HM name..."
              required
            />
          </div>
          <div>
            <label for="complexHMMobile"
              >School Complex HM Mobile Number <b style="color: red">*</b>:
            </label>
            <!-- <p>(10 Digit Mobile Number Only):</p> -->
            <input
              type="tel"
              id="complexHMMobile"
              name="complexHMMobile"
              pattern="\d{10}"
              placeholder="10 Digit Mobile Number..."
              required
            />
          </div>
          <div>
            <label for="designation">Select your designation <b style="color: red">*</b>:</label>
            <select id="designation" name="designation" required>
              <option value="default" selected>--Select-- </option>

              <option value="DEO">District Education Officer (DEO)</option>
              <option value="DyEO">Deputy Education Officer (Dy. EO)</option>
              <option value="MEO1">Mandal Education Officer (MEO) -1</option>
              <option value="MEO2">Mandal Education Officer (MEO) -2</option>
              <option value="IC">LFE - Implementation Co-ordinator (IC)</option>
              <option value="AMO">Academic Monitoring Officer(AMO)</option>
              <option value="RIPE">
                Regional Inspector of Physical Education
              </option>
              <option value="DSGS">District School Games Secretary</option>
              <option value="RJDSE">
                Regional Joint Director of School Education(RJDSE)
              </option>
              <option value="DIET">DIET Principal</option>
              <option value="Other">Other</option>
            </select>
          </div>
        </div>
      </div>
      <div class="detailspage2">
        <div class="number">
          <label for="name">Enter your name <b style="color: red">*</b>:</label>
          <input type="text" id="name" name="name" required placeholder="enter your name..."/>
        </div>
        <div class="number">
          <label for="designation">Please enter your designation <b style="color: red">*</b>:</label>
          <input type="text" id="designation" name="designation" required placeholder="your designation..."/>
        </div>
        <div class="number">
          <label for="mobile">Enter your mobile number <b style="color: red">*</b>:</label>
          <input
            type="tel"
            id="mobile"
            name="mobile"
            pattern="\d{10}"
            placeholder="Mobile Number..."
            required
          />
        </div>
      </div>
      <div class="detailspag3">
        <div>
         <label for="meetingDate">Select the date of your School Complex Meeting visit:<b style="color: red">*</b></label>
        <input type="date" id="meetingDate" name="meetingDate" required>
        </div>
        <div>
        <label for="meetingType">Select the type of School Complex Meeting attended:<b style="color: red">*</b></label>
        <select id="meetingType" name="meetingType" required>
            <option value="primary">Primary</option>
            <option value="subjects">Subjects</option>
            <option value="sports">Sports</option>
        </select>
        </div>
      </div>
      <div class="detailspage4">
        <div class="details4">
            <label for="complexHMMobile"
              >Enter the number of schools attached to the complex
<!-- (Note: Please ask School complex HM for these details) -->
<b style="color: red">*</b>:
            </label>
            <!-- <p>(10 Digit Mobile Number Only):</p> -->
            <input
              type="tel"
              id="complexHMMobile"
              name="complexHMMobile"
              pattern="\d{10}"
              placeholder="enter Number..."
              required
            />
          </div>
           <div>
            <label for="complexHMMobile"
              >Enter the number of teachers attached to the complex
<!-- (Note: Please ask School complex HM for these details) -->
 <b style="color: red">*</b>:
            </label>
            <!-- <p>(10 Digit Mobile Number Only):</p> -->
            <input
              type="tel"
              id="complexHMMobile"
              name="complexHMMobile"
              pattern="\d{10}"
              placeholder="enter Number..."
              required
            />
          </div>
           <div>
            <label for="complexHMMobile"
              >Enter the number of teachers attending the complex meeting
<!-- (Note: Please ask School complex HM for these details) -->
 <b style="color: red">*</b>:
            </label>
            <!-- <p>(10 Digit Mobile Number Only):</p> -->
            <input
              type="tel"
              id="complexHMMobile"
              name="complexHMMobile"
              pattern="\d{10}"
              placeholder="enter number..."
              required
            />
          </div>
          <div>
        <label for="meetingType">How would you rate/score - "Facilitator's Preparation" <b style="color: red">*</b>:</label>
        <select id="meetingType" name="meetingType" required>
          <option value="default" selected>--Select-- </option>

            <option value="5-facilitator was very well prepared">5-facilitator was very well prepared</option>
            <option value="4-facilitator was well prepared">4-facilitator was well prepared</option>
            <option value="3-facilitator was Moderately prepared">3-facilitator was Moderately prepared</option>
            <option value="2-facilitator was Minimally prepared">2-facilitator was Minimally prepared</option>
            <option value="1-facilitator was not prepared">1-facilitator was not prepared</option>

        </select>
        </div>
        <div>
        <label for="meetingType2">Facilitator discussed the previous minutes of the meeting before starting the sessions<b style="color: red">*</b>.</label>
        <select id="meetingType2" name="meetingType2" required>
          <option value="default" selected>--Select-- </option>

            <option value="Yes">Yes</option>
            <option value="No">No</option>
            <option value="sports">Yes,but not in detail</option>
        </select>
        </div>
        <div>
        <label for="meetingType">Necessary physical resources required to conduct the sessions in Agenda items are available<b style="color: red">*</b>.</label>
        <select id="meetingType" name="meetingType" required>
          <option value="default" selected>--Select-- </option>

            <option value="Yes,all material was available">Yes,all material was available</option>
            <option value="Partial material was availabl">Partial material was available</option>
            <option value="No material was available">No material was available</option>
        </select>
        </div>
        <div>
        <label for="meetingType">Necessary digital resources required to conduct the sessions in Agenda items are available<b style="color: red">*</b></label>
        <select id="meetingType" name="meetingType" required>
          <option value="default" selected>--Select-- </option>

            <option value="Yes,all material was available">Yes,all material was available</option>
            <option value="Partial material was available">Partial material was available</option>
            <option value="No material was available">No material was available</option>
            <option value="Not applicable">Not applicable</option>
        </select>
        </div>
        <div>
        <label for="meetingType">Rate teacher engagement for complex meeting as held <b style="color: red">*</b></label>
        <select id="meetingType" name="meetingType" required>
          <option value="default" selected>--Select-- </option>

            <option value="no engagement -Teachers showed little to no participation or contribution during the meeting">no engagement -Teachers showed little to no participation or contribution during the meeting</option>
            <option value="Low  engagement -Teachers participation is low and made limited  contributions to discussion">Low  engagement -Teachers participation is low and made limited  contributions to discussion </option>
            <option value="moderate engagement teachers are reasonably engaged offering input and participating in discussions">moderate engagement -Teachers are reasonably engaged offering input and participating in discussions</option>
            <option value="High engagement-Teachers actively participated ,contributed valuale insights,and engaged in meaning full discussions">High engagement-Teachers actively participated ,contributed valuale insights,and engaged in meaning full discussions</option>
            <option value="very High engagement -The teacher was fully engaged,actively leading discussions and contributions and contributing significantly  to the meeting's objectives">very High engagement -The teacher was fully engaged,actively leading discussions and contributions and contributing significantly  to the meeting's objectives</option>
        </select>
        </div>
        <div>
        <label for="meetingType">Rate teacher engagement in action orientated discussion<b style="color: red">*</b></label>
        <select id="meetingType" name="meetingType" required>
          <option value="default" selected>--Select-- </option>

            <option value="Little or no action focus -the discussion didn't lead to cleaer action steps">Little or no action focus -the discussion didn't lead to clear action steps</option>
            <option value="some actions idea-a few actions points were discussed">some actions idea-a few actions points were discussed</option>
            <option value="mixed action and ideas-both actions step and ideas were discussed ">mixed action and ideas-both actions step and ideas were discussed </option>
            <option value="Mostly action focused - The discussion centered on practical action plans">Mostly action focused - The discussion centered on practical action plans</option>
            <option value="Highly action oriented - The discussion resulted in well-defined and actionable plans">Highly action oriented - The discussion resulted in well-defined and actionable plans</option>
        </select>
        </div>
         <div>
        <label for="meetingType">How would you rate/score - "Relevance to agenda" - for the complex meeting as held<b style="color: red">*</b></label>
        <select id="meetingType" name="meetingType" required>
          <option value="default" selected>--Select-- </option>

            <option value="1-  Discussions in meeting are not aligned with the agenda">1-  Discussions in meeting are not aligned with the agenda</option>
            <option value="2-  Discussions in meeting are partially aligned with the agenda">2-  Discussions in meeting are partially aligned with the agenda</option>
            <option value="3-  Discussions in meeting are moderatley aligned with the agenda">3-  Discussions in meeting are moderatley aligned with the agenda</option>
            <option value="4-  Discussions in meeting are mostly aligned with the agenda">4-  Discussions in meeting are mostly aligned with the agenda</option>
            <option value="5-  Discussions in meeting are fully aligned with the agenda">5-  Discussions in meeting are fully aligned with the agenda</option>
        </select>
        </div>
      </div>
      <div class="detailspage6">
      <div>
        <label for="meetingType">Physical Setting<b style="color: red">*</b></label>
        <select id="meetingType" name="meetingType" required>
          <option value="default" selected>--Select-- </option>

            <option value="1 - Not Supportive">1 - Not Supportive</option>
            <option value="2 - Somewhat Supportive">2 - Somewhat Supportive</option>
            <option value="3 - Moderately Supportive">3 - Moderately Supportive</option>
            <option value="4 - Quite Supportive	">4 - Quite Supportive	</option>
            <option value="5 - Highly Supportive">5 - Highly Supportive</option>
        </select>
        </div>
        <div>
        <label for="meetingType">Social Setting<b style="color: red">*</b></label>
        <select id="meetingType" name="meetingType" required>
          <option value="default" selected>--Select-- </option>

            <option value="1 - Not Supportive">1 - Not Supportive</option>
            <option value="2 - Somewhat Supportive">2 - Somewhat Supportive</option>
            <option value="3 - Moderately Supportive">3 - Moderately Supportive</option>
            <option value="4 - Quite Supportive	">4 - Quite Supportive	</option>
            <option value="5 - Highly Supportive">5 - Highly Supportive</option>
        </select>
        </div>
        </div>
        <div class="detailspage7">
          <p>How would rate the quality of tech - infrastructure as available in the complex?*</p>
          <div class="detailspage72">
          <div>
        <label for="meetingType">Internet Connectivity:<b style="color: red">*</b></label>
        <select id="meetingType" name="meetingType" required>
          <option value="default" selected>--Select-- </option>

            <option value="Not Available">Not Available</option>
            <option value="Available & Working/Used">Available & Working/Used</option>
            <option value="Available & Not Working/Used">Available & Not Working/Used</option>
        </select>
        </div>
        <div>
        <label for="meetingType">Smart TB:<b style="color: red">*</b></label>
        <select id="meetingType" name="meetingType" required>
          <option value="default" selected>--Select-- </option>

            <option value="Not Available">Not Available</option>
            <option value="Available & Working/Used">Available & Working/Used</option>
            <option value="Available & Not Working/Used">Available & Not Working/Used</option>
        </select>
        </div>
        <div>
        <label for="meetingType">Interactive Flat Panel Board (IFPB):<b style="color: red">*</b></label>
        <select id="meetingType" name="meetingType" required>
          <option value="default" selected>--Select-- </option>

              <option value="Not Available">Not Available</option>
            <option value="Available & Working/Used">Available & Working/Used</option>
            <option value="Available & Not Working/Used">Available & Not Working/Used</option>
        </select>
        </div>
        <div>
        <label for="meetingType">Projector:<b style="color: red">*</b></label>
        <select id="meetingType" name="meetingType" required>
          <option value="default" selected>--Select-- </option>


            <option value="Not Available">Not Available</option>
            <option value="Available & Working/Used">Available & Working/Used</option>
            <option value="Available & Not Working/Used">Available & Not Working/Used</option>
        </select>
        </div>
        </div>
        </div>
      
      <div class="detailspage8">
        <div>
            <label for="complexName">Any areas of improvement for the Complex Meeting/Facilitator(s) - Please add details as required<b style="color: red">*</b>:</label>
            <input
              type="text"
              id="complexName"
              name="complexName"
              placeholder="School Complex Name...."
              required
            />
          </div>
          <div>
            <label for="complexName">Any highlights/remarks on the Complex Meeting/Facilitator(s) - Please add details as required<b style="color: red">*</b>:</label>
            <input
              type="text"
              id="complexName"
              name="complexName"
              placeholder="School Complex Name...."
              required
            />
          </div>
          <div>
            <label for="complexName">Please upload a image from the visit conducted to the School Complex Meeting.
              has context menu:<b style="color: red">*</b>:</label>
            <input
              type="file"
              id="file"
              name="file"
              required
            />
          </div>

      </div>
      <div class="btn">
        <button type="submit">Submit</button>
      </div>
    </form>
  </body>
</html>
