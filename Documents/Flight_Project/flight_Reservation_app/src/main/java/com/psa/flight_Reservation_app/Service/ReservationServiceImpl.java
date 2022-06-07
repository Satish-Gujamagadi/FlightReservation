package com.psa.flight_Reservation_app.Service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.psa.flight_Reservation_app.Entity.Flight;
import com.psa.flight_Reservation_app.Entity.Passenger;
import com.psa.flight_Reservation_app.Entity.Reservation;
import com.psa.flight_Reservation_app.Repository.FlightRepository;
import com.psa.flight_Reservation_app.Repository.PassengerRepository;
import com.psa.flight_Reservation_app.Repository.ReservationRepository;
import com.psa.flight_Reservation_app.dto.ReservationRequest;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	private PassengerRepository passengerRepo;

	@Autowired
	private FlightRepository flightRepo;

	@Autowired
	private ReservationRepository reservationRepo;

	@Override
	public Reservation bookFlight(ReservationRequest request) {

		Passenger passenger = new Passenger();
		passenger.setFirstName(request.getFirstName());
		passenger.setMiddleName(request.getMiddleName());
		passenger.setLastName(request.getLastName());
		passenger.setEmail(request.getEmail());
		passenger.setPhone(request.getPhone());

		passengerRepo.save(passenger);

		long flightId = request.getFlightId();
		Optional<Flight> findById = flightRepo.findById(flightId);
		Flight flight = findById.get();

		Reservation reservation = new Reservation();
		reservation.setFlight(flight);
		reservation.setPassenger(passenger);
		reservation.setCheckedIn(false);
		reservation.setNumberOfBags(0);
		reservationRepo.save(reservation);

		return reservation;

	}

}
