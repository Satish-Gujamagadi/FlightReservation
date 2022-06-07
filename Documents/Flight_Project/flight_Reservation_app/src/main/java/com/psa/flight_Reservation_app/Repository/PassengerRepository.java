package com.psa.flight_Reservation_app.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.psa.flight_Reservation_app.Entity.Passenger;


public interface PassengerRepository extends JpaRepository<Passenger, Long> {

}
