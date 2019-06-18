package de.he;

public class CustomerData {

    protected int CNR;
    protected String Email;
    protected String firstname;
    protected String lastname;
    protected String adress;
    protected String city;


    public CustomerData(int CNR, String Email, String firstname, String lastname, String adress, String city) {
        this.CNR = CNR;
        this.Email = Email;
        this.firstname = firstname;
        this.lastname = lastname;
        this.adress = adress;
        this.city = city;
    }
    public int getCNR () { return CNR; }

    public void setCNR ( int CNR) { this.CNR = CNR; }

    public String getEmail() { return Email; }

    public void setEmail( String Email ) { this.Email = Email; }

    public String getFirstname(){ return firstname; }

    public void setFirstname( String firstname ) { this.firstname = firstname; }

    public String getLastname() { return this.lastname; }

    public void setLastname( String lastname ) { this.lastname = lastname; }

    public String getAdress() { return this.adress; }

    public void setAdress(String adress) { this.adress = adress; }

    public String getCity() { return this.city; }

    public void setCity(String city) { this.adress = adress; }

}
