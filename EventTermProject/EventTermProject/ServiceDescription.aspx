<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServiceDescription.aspx.cs" Inherits="EventTermProject.ServiceDescription" %>

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
	<hr>
</body>
</html>
    
    </div>
    </form>
</body>
</html>
