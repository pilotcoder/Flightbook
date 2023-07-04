package pl.jgora.aeroklub.flightbook.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;
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
    @NotBlank
    private String name;
    @NotBlank
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


  //  @Column(insertable = false, updatable = false)
    private Integer flightHrs;

  //  @Column(insertable = false, updatable = false)
    private Integer flightMins;
    @Column(insertable = false, updatable = false)
    private Integer maxFlightHrs;
    @Column(insertable = false, updatable = false)
    private Integer maxFlightMins;


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
        maxFlightHrs = maxLifeTimeInFH / 60;
       maxFlightMins = maxLifeTimeInFH % 60;

            LocalDate nextDate = LocalDate.now().plusDays(30);

            if (dateOfExpiry.isBefore(nextDate)) {
                valid = false;
            }else{
                valid = true;
            }
    }








}
