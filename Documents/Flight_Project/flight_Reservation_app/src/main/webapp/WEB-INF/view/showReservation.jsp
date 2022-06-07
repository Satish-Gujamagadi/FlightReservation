<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation Details</title>
</head>
<body>

	<h2>Flight Details</h2>

	<table>
		<tr>
			<td>Flight Number :</td>
			<td><input type="text" value="${flight.flightNumber}"
				readonly="readonly"></td>
		</tr>
		<tr>
			<td>OperatingAirlines :</td>
			<td><input type="text" value="${flight.operatingAirlines}"
				readonly="readonly"></td>
		</tr>
		<tr>
			<td>DepartureCity :</td>
			<td><input type="text" value="${flight.departureCity}"
				readonly="readonly"></td>
		</tr>
		<tr>
			<td>ArrivalCity :</td>
			<td><input type="text" value="${flight.arrivalCity}"
				readonly="readonly"></td>
		</tr>
		<tr>
			<td>DateOfDeparture :</td>
			<td><input type="text" value="${flight.dateOfDeparture}"
				readonly="readonly"></td>
		</tr>
		<tr>
			<td>EstimatedDepartureTime :</td>
			<td><input type="text" value="${flight.estimatedDepartureTime}"
				readonly="readonly"></td>
		</tr>

	</table>

	<hr />
	<h2>Passenger Details</h2>
	<form action="confirmReservation" method="post">
		<table>
			<tr>
				<td>First Name :</td>
				<td><input type="text" name="firstName"></td>
			</tr>
			<tr>
				<td>Middle Name :</td>
				<td><input type="text" name="middleName"></td>
			</tr>
			<tr>
				<td>Last Name :</td>
				<td><input type="text" name="lastName"></td>
			</tr>
			<tr>
				<td>Email :</td>
				<td><input type="text" name="email"></td>
			</tr>

			<tr>
				<td>Phone :</td>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>

				<td><input type="hidden" name="flightId" value="${flight.id}"></td>
			</tr>


			<tr>
				<td>Name On The Card :</td>
				<td><input type="text" name="nameOfTheCard"></td>
			</tr>
			<tr>
				<td>Card Number :</td>
				<td><input type="text" name="cardNumber"></td>
			</tr>
			<tr>
				<td>CVV:</td>
				<td><input type="text" name="cvv"></td>
			</tr>
			<tr>
				<td>Expiry Date:</td>
				<td><input type="text" name="expiryDate"></td>
			</tr>

			<tr>
				<td><input type="submit" value="Complete Reservation"></td>
			</tr>



		</table>

	</form>




</body>
</html>