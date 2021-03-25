import controller.CompareDataBases;
import controller.SchemaController;
import java.sql.SQLException;
import java.util.Set;

public class Main {

    public static void main(String[] args) throws SQLException {

        SchemaController schemaController = new SchemaController();

        CompareDataBases compareDataBases = new CompareDataBases();
        Set<String> oldDB = compareDataBases
                .getOldTableNames(schemaController.getTableInfoFromOldDb("oldDb"));
        Set<String> newDB = compareDataBases
                .getNewTableNames(schemaController.getTableInfoFromNewDb("newDb"));

        compareDataBases.checkDifferencesBetweenTables(oldDB, newDB);

        Set<String> mutualTables = compareDataBases.getMutualTables(oldDB, newDB);

        compareDataBases.checkDifferencesBetweenColumns(
                schemaController.getTableInfoFromNewDb("newDb"),
                schemaController.getTableInfoFromOldDb("oldDb"), mutualTables);

    }
}
