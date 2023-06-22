package pl.jgora.aeroklub.flightbook.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.ColumnDefault;


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

    @OneToMany(mappedBy = "glider")
    private List<Flight> flightList = new ArrayList<>();

    @OneToMany(mappedBy = "glider")
    private List<LLP> llpList = new ArrayList<>();

    @PostLoad
    public void tottalTimeCount() {
        int temp = 0;
        for (Flight flight : flightList) {
            temp = temp + flight.getFlightTime();
        }
        totalFlightTime = temp;

        flightHrs = totalFlightTime / 60;
        flightMins = totalFlightTime % 60;

    }


}

