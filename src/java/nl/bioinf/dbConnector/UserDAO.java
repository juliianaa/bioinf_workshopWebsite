
package nl.bioinf.dbConnector;

import java.io.IOException;

/**
 * Interface that defines the standard operation for the model
 * (UserDAOmysqlImpl.java).
 *
 * @author Tom Kral
 */
public interface UserDAO {

    /**
     * Logs in an user.
     * @param username
     * @param password
     * @return User
     * @throws IOException
     */
    User loginUser (String username, String password) throws IOException;

    /**
     * Registers a user.
     * @param username
     * @param firstName
     * @param lastName
     * @param emailAdress
     * @param password
     * @return User
     * @throws IOException
     */
    User registerUser (String username,
            String firstName,
            String lastName,
            String emailAdress,
            String password) throws IOException;

    /**
     * Disconnects from the database
     * @throws IOException
     */
    void disconnect() throws IOException;

    /**
     * Check if an username is already present in the database.
     * @param username
     * @return boolean userExists
     * @throws IOException
     */
    boolean checkUsername (String username) throws IOException;

    /**
     * Check if an emailadress is already present in the database
     * @param email
     * @return boolean emailExists
     * @throws IOException
     */
    boolean checkEmail (String email) throws IOException;

}
