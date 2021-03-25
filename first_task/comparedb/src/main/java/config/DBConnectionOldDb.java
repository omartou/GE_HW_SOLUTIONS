package config;

import java.sql.SQLException;
import javax.sql.DataSource;
import org.mariadb.jdbc.MariaDbDataSource;

public class DBConnectionOldDb {
    private static DataSource instance;

    public DataSource connect() throws SQLException {
        MariaDbDataSource dataSource = new MariaDbDataSource();

        dataSource.setDatabaseName("olddb");
        dataSource.setUser("omar");
        dataSource.setPassword("omarka");
        dataSource.getConnection().close();
        return dataSource;
    }


    public static DataSource getInstance() {
        if (instance == null) {
            try {
                instance = new DBConnectionOldDb().connect();
            } catch (SQLException e) {
                System.out.println("Trouble at connecting to database. " + e);
            }
        }
        return instance;
    }
}
