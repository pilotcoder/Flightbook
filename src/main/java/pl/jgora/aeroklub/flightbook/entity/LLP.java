package pl.jgora.aeroklub.flightbook.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.hibernate.annotations.ColumnDefault;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;
import java.time.Period;

@Entity
@Setter
@Getter
@RequiredArgsConstructor
@ToString
@Table(name = "parts")
public class LLP {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotNull
    private String name;
    @NotNull
    private String type;
    private String serialNumber;
    @ColumnDefault("true")
    private boolean valid;
    @NotNull
    private Integer lifeTimeInYears;
    @NotNull
    @DateTimeFormat(pattern = "yyy-MM-dd")
    private LocalDate dateOfInstall;
    @NotNull
    private Integer lifeTimeInFH;

    private Integer flightHoursOfInstall;
    private Integer maxLifeTimeInFH;
    private LocalDate dateOfExpiry;


    @Transient
    private Integer flightHrs;
    @Transient
    private Integer flightMins;

//    private Integer maxCycles;  // narazie nie ma nic co by żyło cyklami w szybowcu

    @ManyToOne
    private Glider glider;


    @PrePersist
    @PreUpdate
    private void maxlifeCalculator() {
        dateOfExpiry = dateOfInstall.plus(Period.ofYears(lifeTimeInYears));
        flightHoursOfInstall = flightHrs * 60 + flightMins;
        maxLifeTimeInFH = flightHoursOfInstall + lifeTimeInFH * 60;

    }

        @PostLoad
    private void reParseTime() {
        flightHrs = maxLifeTimeInFH / 60;
       flightMins = maxLifeTimeInFH % 60;

    }


}
