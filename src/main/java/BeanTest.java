
import java.util.Calendar;
import java.util.Date;

public class BeanTest {
    public static void main(String[] args) {
        Album album = new Album();
        Quote quote = new Quote();
        Date date = new Date(2007, Calendar.FEBRUARY,1);

        album.setId(1);
        album.setArtist("Digitalism");
        album.setName("Idealism");
        album.setGenre("Electronic");
        album.setReleaseDate(date);
        album.setSales(120);

        System.out.println(album.getId());
        System.out.println(album.getArtist());
        System.out.println(album.getName());
        System.out.println(album.getGenre());
        System.out.println(album.getReleaseDate());
        System.out.println(album.getSales());
    }
}
