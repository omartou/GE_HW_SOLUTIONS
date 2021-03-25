package config;

import javax.sql.DataSource;
import java.sql.SQLException;
import org.mariadb.jdbc.MariaDbDataSource;

public class DBConnectionNewDb {

    private static DataSource instance;

    public DataSource connect() throws SQLException {
        MariaDbDataSource dataSource = new MariaDbDataSource();

        dataSource.setDatabaseName("newdb");
        dataSource.setUser("omar");
        dataSource.setPassword("omarka");
        dataSource.getConnection().close();
        return dataSource;
    }


    public static DataSource getInstance() {
        if (instance == null) {
            try {
                instance = new DBConnectionNewDb().connect();
            } catch (SQLException e) {
                System.out.println("Trouble at connecting to database. " + e);
            }
        }
        return instance;
    }
}