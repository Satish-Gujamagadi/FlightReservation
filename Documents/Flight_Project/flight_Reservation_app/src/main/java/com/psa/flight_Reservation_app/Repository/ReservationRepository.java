package com.psa.flight_Reservation_app.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.psa.flight_Reservation_app.Entity.Reservation;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {

}
