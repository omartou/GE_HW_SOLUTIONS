package dao;

import java.util.List;
import model.TableInfo;

public interface SchemaInfoDao {

    List<TableInfo> getDbInfo(String dbName);
}
