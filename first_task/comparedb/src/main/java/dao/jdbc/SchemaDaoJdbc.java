package dao.jdbc;

import dao.SchemaInfoDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import model.ColumnInfo;
import model.TableInfo;

public class SchemaDaoJdbc implements SchemaInfoDao {
    private DataSource dataSource;

    public SchemaDaoJdbc(DataSource dataSource) {
        this.dataSource = dataSource;
    }


    @Override
    public List<TableInfo> getDbInfo(String dbName) {
        List<TableInfo> tableInfoList = new ArrayList<>();
        String SQLTableNames = "SELECT distinct TABLE_NAME FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=?";

        try (Connection conn = dataSource.getConnection();
                PreparedStatement preparedStatement = conn.prepareStatement(SQLTableNames)) {
            preparedStatement.setString(1, dbName);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String tableName = rs.getString("TABLE_NAME");
                TableInfo tableInfo = new TableInfo(tableName);
                tableInfoList.add(tableInfo);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

        String SQLColumAndType = "select COLUMN_NAME, DATA_TYPE  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=? and TABLE_NAME = ?";

        for(TableInfo element:tableInfoList){

            try (Connection conn = dataSource.getConnection();
                    PreparedStatement preparedStatement = conn.prepareStatement(SQLColumAndType)) {
                preparedStatement.setString(1, dbName);
                preparedStatement.setString(2, element.getTableName());

                ResultSet rs = preparedStatement.executeQuery();
                while (rs.next()) {
                    String columnName = rs.getString("COLUMN_NAME");
                    String dataType = rs.getString("DATA_TYPE");
                    ColumnInfo columnInfo = new ColumnInfo(columnName, dataType);
                    element.getColumnInfoList().add(columnInfo);
                }
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        }
//        return tableInfoSet;
        return tableInfoList;
    }
}
