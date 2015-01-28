/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.dbConnector;

import java.io.IOException;

/**
 * Interface that is defines the operations to be executed by the model
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
     * Registers a new user.
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
     * Disconnetcts from the database.
     * @throws IOException
     */
    void disconnect() throws IOException;

    /**
     * Checks if an username already exists in the database.
     * @param username
     * @return
     * @throws IOException
     */
    boolean checkUsername (String username) throws IOException;

    /**
     * Checks if an emailadress already exists in the database.
     * @param email
     * @return
     * @throws IOException
     */
    boolean checkEmail (String email) throws IOException;

}
