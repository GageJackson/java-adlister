import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection getConnection() throws RuntimeException, SQLException {
        Config config = new Config();
        return DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
        );
    }

    @Override
    public List<Ad> all() throws SQLException{
        List<Ad> ads = new ArrayList<>();
        String selectQuery = "SELECT * FROM ads";

        Connection connection = getConnection();

        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(selectQuery);

        while (rs.next()){
            ads.add(new Ad(rs.getLong("id"), rs.getLong("userId"), rs.getString("title"), rs.getString("description")));
        }

        return ads;
    }

    @Override
    public long insert(Ad ad) throws SQLException {
        long userId = ad.getUserId();
        String title = ad.getTitle();
        String description = ad.getDescription();
        String insertStatement = String.format("INSERT INTO ads (user_id, title, description) VALUES (%d, %s, %s);", userId, title, description);

        Connection connection = getConnection();

        Statement statement = connection.createStatement();
        statement.executeUpdate(insertStatement, statement.RETURN_GENERATED_KEYS);

        ResultSet rs = statement.getGeneratedKeys();

        if (rs.next()) {
            System.out.println("Inserted new ad! New id: " + rs.getLong(1));
        }

        return rs.getLong(1);
    }
}
