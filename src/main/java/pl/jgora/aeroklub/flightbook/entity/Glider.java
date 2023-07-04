package pl.jgora.aeroklub.flightbook.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.ColumnDefault;


import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Entity
@Setter
@Getter
@ToString
@Table(name = "gliders")

public class Glider {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String type;
    private String name;
    private String serialNumber;
    private String regNumber;
    private String yearOfBuild;
    private Integer initTotalFlightTime;
    private Integer initTotalCycles;
    @ColumnDefault("0")
    private Integer totalFlightTime;
    @ColumnDefault("0")
    private Integer totalCycles;
    @Column(insertable = false, updatable = false)// z @Transiend nie działało przy update
    private Integer flightHrs;

    @Column(insertable = false, updatable = false)
    private Integer flightMins;

    private Integer alertIntervalInDays;

    private Integer alertIntervalInFH;

    @OneToMany(mappedBy = "glider")
    private List<Flight> flightList = new ArrayList<>();

    @OneToMany(mappedBy = "glider")
    private List<LLP> llpList = new ArrayList<>();

    @PostLoad
    public void totalTimeCount() {
        int tempMins = 0;
        for (Flight flight : flightList) {
            tempMins = tempMins + flight.getFlightTime();
        }
        int tempCycles = 0;
        for (Flight flight : flightList) {
            tempCycles = tempCycles + flight.getCycles();
        }
        totalCycles = tempCycles;

        totalFlightTime = tempMins;

        flightHrs = totalFlightTime / 60;
        flightMins = totalFlightTime % 60;



    }


}

