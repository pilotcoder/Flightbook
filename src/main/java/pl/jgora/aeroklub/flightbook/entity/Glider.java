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
    private String yearOfBulid;
    private Integer initTotalFlightTime;
    private Integer initTotalCycles;
    @ColumnDefault("0")
    private Integer totalFlightTime;
    @ColumnDefault("0")
    private Integer totalCycles;

    @OneToMany(mappedBy = "glider")
    private List<Flight> flightList = new ArrayList<>();

    @OneToMany(mappedBy = "glider")
    private List<LLP> llpList = new ArrayList<>();



}

