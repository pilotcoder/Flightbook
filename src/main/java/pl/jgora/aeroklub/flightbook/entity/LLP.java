package pl.jgora.aeroklub.flightbook.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDate;

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
    private String name;
    private String type;
    private String serialNumber;

    private boolean valid;

    private Integer maxLifetime;

    private LocalDate dateOfExpiry;

    private Integer maxCycles;




}
