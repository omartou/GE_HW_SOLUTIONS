package model;

import java.util.ArrayList;
import java.util.List;

public class TableInfo {

    private String tableName;
    List<ColumnInfo> columnInfoList;

    public TableInfo(String tableName) {
        this.tableName = tableName;
        this.columnInfoList = new ArrayList<>();
    }

    public String getTableName() {
        return tableName;
    }


    public List<ColumnInfo> getColumnInfoList() {
        return columnInfoList;
    }

    @Override
    public String toString() {
        return "TableInfo{" +
                "tableName='" + tableName + '\'' +
                ", columnInfoList=" + columnInfoList +
                '}';
    }
}
