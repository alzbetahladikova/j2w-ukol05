package cz.czechitas.java2webapps.ukol5.controller;

import jakarta.validation.constraints.AssertTrue;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

public class RegistraceForm {


    @NotBlank
    private String jmeno;
    @NotBlank
    private String prijmeni;

    @DateTimeFormat(pattern = "dd.MM.yyyy")
    private LocalDate datumNarozeni;

    @NotNull
    private Pohlavi pohlavi;
    @NotBlank
    private String turnus;
    @Email
    private String email;
    private String telefon;

    @AssertTrue
    private boolean podminky;
    @AssertTrue
    private boolean rad;


    public String getJmeno() {
        return jmeno;
    }

    public void setJmeno(String jmeno) {
        this.jmeno = jmeno;
    }

    public String getPrijmeni() {
        return prijmeni;
    }

    public void setPrijmeni(String prijmeni) {
        this.prijmeni = prijmeni;
    }

    public LocalDate getDatumNarozeni() {
        return datumNarozeni;
    }

    public void setDatumNarozeni(LocalDate datumNarozeni) {
        this.datumNarozeni = datumNarozeni;
    }

    public Pohlavi getPohlavi() {
        return pohlavi;
    }

    public void setPohlavi(Pohlavi pohlavi) {
        this.pohlavi = pohlavi;
    }

    public String getTurnus() {
        return turnus;
    }

    public void setTurnus(String turnus) {
        this.turnus = turnus;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefon() {
        return telefon;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }

    public boolean isPodminky() {
        return podminky;
    }

    public void setPodminky(boolean podminky) {
        this.podminky = podminky;
    }

    public boolean isRad() {
        return rad;
    }

    public void setRad(boolean rad) {
        this.rad = rad;
    }
}
