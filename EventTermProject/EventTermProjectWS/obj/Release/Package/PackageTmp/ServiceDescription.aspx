<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServiceDescription.aspx.cs" Inherits="EventTermProjectWS.ServiceDescription" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

p.MsoListParagraph
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:.5in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        
<html>
<head>
	<title>Nicole and Bill Term Project</title>
</head>
<body>
	<h1>Term Project - Events</h1>
	<h2>GetEventAgencies</h2>
	<h3>Takes parameters: (String)City, (String)State</h3>
	<p>This method will return a DataSet of all Event Agencies within a given region</p>
	<hr>

	<h2>GetEvents</h2>
	<h3>Takes parameters: (Object)Agency, (String)City, (String)State</h3>
	<p>This method will return a DataSet of a specific Event Agencies events for a given region.</p>
	<p>The Agency Object is made up of:</p>
	<ul>
		<li>(String)Name</li>
		<li>(String)Phone</li>
		<li>(String)Email</li>
		<li>(String)City</li>
		<li>(String)State</li>

	</ul>		
	<hr>

	<h2>FindEvents</h2>
	<h3>Takes parameters: (Object)Activities,(String)City, (String)State</h3>
	<p>This method takes a users preferences of time, type, day, city and state of event, and the method will return a DataSet of all events that match the criteria</p>
	<p>The Acitivity Object is made up of:</p>
	<ul>
		<li>(String)Type</li>
		<li>(String)Day</li>
		<li>(String)Time</li>

	</ul>
	<hr>

	<h2>Reserve</h2>
	<h3>Takes parameters: (Object)Event, (Object)Customer</h3>
	<p></p>
	<p>The Event Object is made up of:</p>
	<ul>
		<li>(int)ID</li>
		<li>(String)Name</li>
		<li>(String)Type</li>
		<li>(String)Day</li>
		<li>(String)Time</li>
		<li>(String)City</li>
		<li>(String)State</li>
		<li>(int)AgencyID</li>
		<li>(double)Price</li>

	</ul>
	<p>The Customer Object is made up of:</p>
	<ul>
		<li>(String)CustomerFirstName</li>
		<li>(String)CustomerLastName</li>
		<li>(String)CustomerPhone</li>
		<li>(String)CustomerEmail</li>

	</ul>

     <hr />
    <h2>Customer Class</h2>
    <p>The Customer class defines an instance of a Customer:</p>
	<ul>
        <li>(int)customerID</li>
		<li>(String)customerFirstName</li>
		<li>(String)customerLastName</li>
		<li>(String)customerPhone</li>
		<li>(String)customerEmail</li>
	</ul>


     <hr />
    <h2>Agency Class</h2>
    <p>The Agency class defines an instance of an Agency:</p>
	<ul>
		<li>(int)agencyID</li>
		<li>(String)agencyName</li>
		<li>(String)agencyPhone</li>
		<li>(String)agencyEmail</li>
        <li>(String)agencyCity</li>
		<li>(String)agencyState</li>

	</ul>


     <hr />
    <h2>Activity Class</h2>
    <p>The Activity class defines an instance of a Activity:</p>
	<ul>
		<li>(String)eventType</li>
		<li>(String)eventDay</li>
		<li>(String)eventTime</li>

	</ul>

     <hr />
    <h2>Event Class</h2>
    <p>The Event class defines an instance of a Event:</p>
	<ul>
		<li>(int)eventID</li>
		<li>(String)eventName</li>
		<li>(String)eventType</li>
		<li>(String)eventDay</li>
        <li>(String)eventTime</li>
		<li>(String)eventCity</li>
		<li>(String)eventState</li>
        <li>(int)agencyID</li>
		<li>(double)eventPrice</li>

	</ul>
	<hr>
</body>
</html>
    
    </div>
    </form>
</body>
</html>
