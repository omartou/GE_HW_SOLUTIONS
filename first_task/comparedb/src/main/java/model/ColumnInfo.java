package model;

public class ColumnInfo {

    private String columnName;
    private DataType dataType;

    public ColumnInfo(String columnName, String dataType) {
        this.columnName = columnName;
        this.dataType = DataType.of(dataType);
    }

    public String getColumnName() {
        return columnName;
    }

    public DataType getDataType() {
        return dataType;
    }

}
