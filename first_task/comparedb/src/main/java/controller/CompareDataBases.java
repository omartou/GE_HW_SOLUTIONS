package controller;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import model.ColumnInfo;
import model.TableInfo;

public class CompareDataBases {

    public Set<String> getOldTableNames(List<TableInfo> oldDbSet) {
        Set<String> oldDbTableNames = new HashSet<>();

        for (TableInfo tableName : oldDbSet) {
            oldDbTableNames.add(tableName.getTableName());
        }
        System.out.println("'olddb' database's tables: " + oldDbTableNames);
        return oldDbTableNames;
    }

    public Set<String> getNewTableNames(List<TableInfo> newDbSet) {
        Set<String> newDbTableNames = new HashSet<>();

        for (TableInfo tableName : newDbSet) {
            newDbTableNames.add(tableName.getTableName());
        }
        System.out.println("'newdb' database's tables: " + newDbTableNames);
        return newDbTableNames;
    }

    public void checkDifferencesBetweenTables(Set<String> oldDb, Set<String> newDb) {
        if (oldDb.size() > newDb.size()) {
            oldDb.removeAll(newDb);
            System.out.println("Deleted table name(s): " + oldDb);
        } else {
            newDb.removeAll(oldDb);
            System.out.println("Added table name(s): " + newDb);
        }
    }

    public Set<String> getMutualTables(Set<String> newDb, Set<String> oldDb) {
        newDb.retainAll(oldDb);
        System.out.println("Mutual tables: " + oldDb);
        return oldDb;
    }

    public void checkDifferencesBetweenColumns(List<TableInfo> newDb, List<TableInfo> oldDb,
            Set<String> mutualTables) {
        for (String mutualElement : mutualTables) {
            System.out.println("table: " + mutualElement);
            TableInfo tableInfoNew = newDb.stream()
                    .filter(tableInfo -> tableInfo.getTableName().equals(mutualElement)).findFirst()
                    .get();
            TableInfo tableInfoOld = oldDb.stream()
                    .filter(tableInfo -> tableInfo.getTableName().equals(mutualElement)).findFirst()
                    .get();
            getDifferentElements(tableInfoNew.getColumnInfoList(),
                    tableInfoOld.getColumnInfoList());
            getDifferentColumnsDataType(tableInfoNew.getColumnInfoList(),
                    tableInfoOld.getColumnInfoList());
        }
    }

    public void getDifferentElements(List<ColumnInfo> newDb, List<ColumnInfo> oldDb) {
        Set<String> columnNameOld = new HashSet<>();
        Set<String> columnNameNew = new HashSet<>();
        for (ColumnInfo columnElement : newDb) {
            columnNameNew.add(columnElement.getColumnName());
        }
        for (ColumnInfo columnElement : oldDb) {
            columnNameOld.add(columnElement.getColumnName());
        }

        if (columnNameOld.size() > columnNameNew.size()) {
            columnNameOld.removeAll(columnNameNew);
            System.out.println("The deleted columns are: " + columnNameOld);
        } else {
            columnNameNew.removeAll(columnNameOld);
            System.out.println("The new columns are: " + columnNameNew);
        }
    }

    public void getDifferentColumnsDataType(List<ColumnInfo> newDb, List<ColumnInfo> oldDb) {
        for (ColumnInfo oldTypeELement : oldDb) {
            for (ColumnInfo newTypeElement : newDb) {
                if (oldTypeELement.getColumnName().equals(newTypeElement.getColumnName())
                        && !oldTypeELement.getDataType().equals(newTypeElement.getDataType())) {
                    System.out.println(oldTypeELement.getColumnName() + ": " +
                            oldTypeELement.getDataType() + " -> " + newTypeElement.getDataType());
                }
            }
        }
    }
}
