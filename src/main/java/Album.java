import java.io.Serializable;
import java.util.Date;
import java.time.LocalDate;


public class Album implements Serializable {

    private int id;
    private String artist;
    private  String name;
    private Date releaseDate;
    private int sales;
    private String genre;
    public Album(){}

    /*
    Setters
     */
    public void setId(int id) {
        this.id = id;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    public void setSales(int sales) {
        this.sales = sales;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    /*
    Getters
     */
    public int getId() {
        return id;
    }

    public String getArtist() {
        return artist;
    }

    public String getName() {
        return name;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public int getSales() {
        return sales;
    }

    public String getGenre() {
        return genre;
    }
}
