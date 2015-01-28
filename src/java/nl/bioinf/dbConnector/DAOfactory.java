
package nl.bioinf.dbConnector;


import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Constructor that makes the databaseconnector when the type of the database is MySql
 *
 * @author Tom Kral
 */
public class DAOfactory {

    public static UserDAO getLoginDAO(String dbType, String dbUser, String dbPass, String dbUrl) throws IOException {
        if (dbType.equalsIgnoreCase("MySQL")) {
            return createMysqlDAO(dbType, dbUser, dbPass, dbUrl);
        }
        else {
            throw new IllegalArgumentException("Databasetype " + dbType + " is not supported");
        }
    }

    private static final UserDAO createMysqlDAO(String dbType, String dbUser, String dbPass, String dbUrl) throws IOException {

        try {
            UserDAOmysqlImpl dao = new UserDAOmysqlImpl();
            dao.connect(dbUser, dbPass, dbUrl);
            return dao;
        }
        catch (IOException e) {
            Logger.getLogger(DAOfactory.class.getName()).log(Level.SEVERE, null, e);
            throw new IOException("", e);
        }

    }

}
