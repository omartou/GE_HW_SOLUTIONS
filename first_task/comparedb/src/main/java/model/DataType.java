package model;

public enum DataType {
    INT, DOUBLE, VARCHAR;

    public static DataType of(String name) {
        return switch (name) {
            case "int" -> INT;
            case "double" -> DOUBLE;
            case "varchar" -> VARCHAR;
            default -> throw new IllegalArgumentException("Unknown column type: " + name);
        };
    }
}
