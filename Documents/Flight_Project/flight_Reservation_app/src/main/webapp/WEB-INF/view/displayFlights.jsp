<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Flights</title>
</head>
<body>

	<h2>Flight Search Result</h2>
	<hr />




	<table border="1">
		<thead>
			<tr>
				<th>Airlines</th>
				<th>Departure City</th>
				<th>Arrival City</th>
				<th>Select Flights</th>
				<th>List of Flights</th>
			</tr>

		</thead>

		<tbody>
			<c:forEach items="${findFlights}" var="findFlights">

				<tr>
					<td>${findFlights.operatingAirlines}</td>
					<td>${findFlights.departureCity}</td>
					<td>${findFlights.arrivalCity}</td>
					<td>${findFlights.estimatedDepartureTime}</td>
					<td><a href="showCompleteReservation?flightId=${findFlights.id}">Select</a></td>
				</tr>
			</c:forEach>

		</tbody>

	</table>



</body>
</html>