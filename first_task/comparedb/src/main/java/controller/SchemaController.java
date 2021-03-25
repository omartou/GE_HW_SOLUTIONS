package controller;

import config.DBConnectionNewDb;
import config.DBConnectionOldDb;
import dao.SchemaInfoDao;
import dao.jdbc.SchemaDaoJdbc;
import java.util.List;
import javax.sql.DataSource;
import model.TableInfo;

public class SchemaController {

    DataSource dataSourceDbNew = DBConnectionNewDb.getInstance();
    SchemaInfoDao dBSchemaInfoDaoNewDb = new SchemaDaoJdbc(dataSourceDbNew);

    DataSource dataSourceDbOld = DBConnectionOldDb.getInstance();
    SchemaInfoDao dBSchemaInfoDaoOldDb = new SchemaDaoJdbc(dataSourceDbOld);

    public List<TableInfo> getTableInfoFromNewDb(String dbName) {
        return dBSchemaInfoDaoNewDb.getDbInfo(dbName);
    }

    public List<TableInfo> getTableInfoFromOldDb(String dbName) {
        return dBSchemaInfoDaoOldDb.getDbInfo(dbName);
    }

}
