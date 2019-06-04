package de.he;


public class Article {
    protected float price;
    protected int artNr;
    protected String manufact;
    protected String artName;
    protected int artCount;

    public Article(float price, int artNr, String manufact, String artName, int artCount) {
        this.price = price;
        this.artNr = artNr;
        this.manufact = manufact;
        this.artName = artName;
        this.artCount = artCount;
    }

    public int getArtCount() {
        return artCount;
    }

    public void setArtCount(int artCount) {
        this.artCount = artCount;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getArtNr() {
        return artNr;
    }

    public void setArtNr(int artNr) {
        this.artNr = artNr;
    }

    public String getManufact() {
        return manufact;
    }

    public void setManufact(String manufact) {
        this.manufact = manufact;
    }

    public String getArtName() {
        return artName;
    }

    public void setArtName(String artName) {
        this.artName = artName;
    }
}
