package com.psa.flight_Reservation_app.Service;

import com.psa.flight_Reservation_app.Entity.Reservation;
import com.psa.flight_Reservation_app.dto.ReservationRequest;

public interface ReservationService {

	Reservation bookFlight(ReservationRequest request);

}
