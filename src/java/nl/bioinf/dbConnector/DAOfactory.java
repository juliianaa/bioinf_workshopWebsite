package nl.bioinf.dbConnector;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Constructor that makes the databaseconnector when the type of the database is
 * MySql.
 *
 * @author Tom Kral
 */
public class DAOfactory {

    /**
     * Construct an interface when the type of the database is SQL.
     * @param dbType String
     * @param dbUser String
     * @param dbPass String
     * @param dbUrl String
     * @return createMysqlDAO
     * @throws IOException
     */
    public static UserDAO getLoginDAO(final String dbType,
	    final String dbUser,
	    final String dbPass,
	    final String dbUrl) throws IOException {
	if (dbType.equalsIgnoreCase("MySQL")) {
	    return createMysqlDAO(dbType, dbUser, dbPass, dbUrl);
	} else {
	    throw new IllegalArgumentException("Databasetype "
		    + dbType
		    + " is not supported");
	}
    }

    /**
     * Constructs the implementation for a SQL database.
     * @param dbType String
     * @param dbUser String
     * @param dbPass String
     * @param dbUrl String
     * @return UserDAOmysqlImpl
     * @throws IOException
     */
    private static UserDAO createMysqlDAO(final String dbType,
	    final String dbUser,
	    final String dbPass,
	    final String dbUrl) throws IOException {

	try {
	    UserDAOmysqlImpl dao = new UserDAOmysqlImpl();
	    dao.connect(dbUser, dbPass, dbUrl);
	    return dao;
	} catch (IOException e) {
	    Logger.getLogger(DAOfactory.class.getName())
		    .log(Level.SEVERE, null, e);
	    throw new IOException("", e);
	}

    }

}
