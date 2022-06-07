package com.psa.flight_Reservation_app.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.psa.flight_Reservation_app.Entity.Reservation;
import com.psa.flight_Reservation_app.Service.ReservationService;
import com.psa.flight_Reservation_app.dto.ReservationRequest;

@Controller
public class ReservationController {

	@Autowired
	ReservationService reservationService;

	@RequestMapping("/confirmReservation")
	public String confirmReservation(ReservationRequest request, ModelMap modelMap) {

		Reservation reservationId = reservationService.bookFlight(request);
		modelMap.addAttribute("reservationId", reservationId.getId());											

		return "confirmReservation";
	}

}
