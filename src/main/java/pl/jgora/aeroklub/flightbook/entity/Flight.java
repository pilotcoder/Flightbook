package pl.jgora.aeroklub.flightbook.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.ColumnDefault;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;
import java.util.Date;

@Entity
@Setter
@Getter
@ToString
@NoArgsConstructor
@Table(name = "flights")
public class Flight {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotNull(message = "{title.date.error}")
    @DateTimeFormat(pattern = "yyy-MM-dd")
    private LocalDate dateOfFlight;
    @ColumnDefault("0")
    private Integer flightTime;

//    @Column(insertable = false, updatable = false)// z @Transiend nie działało przy update
    @Min(value = 0)
    @NotNull(message = "{title.hrs.error}")
    private Integer flightHrs;

//    @Column(insertable = false, updatable = false)
@Min(value = 0)
@NotNull(message = "{title.mins.error}")
    private Integer flightMins;
    @Min(value = 1)
    private Integer cycles;

    @ManyToOne(fetch = FetchType.EAGER)
    private Glider glider;

    @PreUpdate
    @PrePersist
    private void flightTimeToMinutes() {
        flightTime = flightHrs * 60 + flightMins;

    }

    @PostLoad
    private void loadTime() {
        flightHrs = flightTime / 60;
        flightMins = flightTime % 60;

    }
}





