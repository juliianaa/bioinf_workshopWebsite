
package nl.bioinf.dbConnector;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Establishes a connection with a MySQL database and handles users in it. Can
 * connect, disconnect, log in a user and register a new user
 *
 * @author Tom Kral
 * @author Rutger Ozinga
 */
public final class UserDAOmysqlImpl implements UserDAO {

    /**
     * Connection object.
     */
    private Connection connection;

    /**
     * Establishes connection with database.
     *
     * @author Tom Kral
     * @param dbUrl String
     * @param dbUser String
     * @param dbPass String
     * @throws IOException ex
     */
    @Override
    public void connect(final String dbUrl,
	    final String dbUser,
	    final String dbPass) throws IOException {

        try {
	    //load the JDBC driver class
            Class.forName("com.mysql.jdbc.Driver");
            try {
		//establish the connection
                connection = DriverManager.getConnection(dbUrl, dbUser, dbPass);

                Logger.getLogger(UserDAOmysqlImpl.class.getName())
			.log(Level.INFO, "****Connected!");
                System.out.println("***Connected");
            } catch (SQLException e) {
                Logger.getLogger(UserDAOmysqlImpl.class.getName())
			.log(Level.SEVERE, "****NOT Connected!");
                throw new IOException(e.getMessage());
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserDAOmysqlImpl.class.getName())
		    .log(Level.SEVERE, null, ex);
            throw new IOException("Could not load Driver class");
        }
    }

    /**
     * Disconnects from database.
     *
     * @author Tom Kral
     * @throws IOException ex
     */
    @Override
    public void disconnect() throws IOException {
        try {
	    //close the connection
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOmysqlImpl.class.getName())
		    .log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Retrieve userdata from database to log in user.
     *
     * @author Tom Kral
     * @param username String
     * @param password String
     * @return User
     * @throws IOException e
     */
    @Override
    public User loginUser(final String username,
	    final String password) throws IOException {
        try {
	    //SQL query for retrieving data from "User" table to log in user
            String sqlStatement =
		    "SELECT * FROM Users WHERE username=? AND password=?";

	    //Maka a prepared statement with query and fill in placeholders
            PreparedStatement ps = connection.prepareStatement(sqlStatement);
            ps.setString(1, username);
            ps.setString(2, password);

            //Execute the statement and retrieve the results
	    ResultSet rs = ps.executeQuery();
            if (rs.next()) { //in case of results, retrieve data and return User
                String firstName = rs.getString("firstname");
                String lastName = rs.getString("lastname");
                String emailAdress = rs.getString("email");
                System.out.println("User logged in!");
                return new User(username, firstName, lastName, emailAdress);
            } else { //in case the resultset is empty, throw exeption
                throw new IllegalArgumentException(
			"Username of wachtwoord niet herkend");
            }
        } catch (SQLException e) {
            Logger.getLogger(UserDAOmysqlImpl.class.getName())
		    .log(Level.SEVERE, null, e);
            throw new IOException(e);
        }
    }

    /**
     * Add a new user to the database.
     *
     * @author Tom Kral
     * @param username String
     * @param firstName String
     * @param lastName String
     * @param emailAdress String
     * @param password String
     * @return User
     * @throws IOException ex
     */
    @Override
    public User registerUser(final String username,
	    final String firstName,
	    final String lastName,
	    final String emailAdress,
	    final String password) throws IOException {

        try {
	    //SQL query for adding new userdata to the "User" table
            String insertQuery = "INSERT INTO Users (username, firstname, "
		    + "lastname, password, email) VALUES (?, ?, ?, ?, ?)";

            //Make a prepared statement and fill the placeholders
	    PreparedStatement psi = connection.prepareStatement(insertQuery);
            psi.setString(1, username);
            psi.setString(2, firstName);
            psi.setString(3, lastName);
            psi.setString(4, password);
            psi.setString(5, emailAdress);

	    //Execute the query
            psi.executeUpdate();
            System.out.println("user registerd");
	    //Return the new user
            return new User(username, firstName, lastName, emailAdress);

        } catch (SQLException ex) {
            Logger.getLogger(UserDAOmysqlImpl.class.getName())
		    .log(Level.SEVERE, null, ex);
        }

        return null;

    }

    /**
     * Checks if the given username already exists or not.
     *
     * @author Rutger Ozinga
     * @param username String
     * @return boolean userExists
     * @throws IOException ex
     */
    @Override
    public boolean checkUsername(final String username) throws IOException {

	//false = nonexisting user, true = existing user
	boolean userExists = false;

	//SQL query for selecting an username from the "User" table
        String checkUsername = "SELECT username FROM Users WHERE username = ?";

        try {
	    //Make prepared statement, fill placeholders and execute the query
            PreparedStatement checkUser =
		    connection.prepareStatement(checkUsername);
            checkUser.setString(1, username);
            ResultSet rs = checkUser.executeQuery();

	    //if resultset is empty, the username does not exists
	    if (!rs.next()) {
                return userExists;
            } else {
		//do-while structure:
		//Expression is evaluated at the bottom so the loop has to be
		//executed at least once
                do {
		    //if there's even one match the username already exists
                    userExists = true;
                } while (rs.next());
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOmysqlImpl.class.getName())
		    .log(Level.SEVERE, null, ex);
        }
        userExists = true;
        return userExists;
    }

    /**
     * Checks if the given emailadress already exists or not.
     *
     * @author Rutger Ozinga
     * @param email String
     * @return boolean emailExists
     * @throws IOException ex
     */
    @Override
    public boolean checkEmail(final String email) throws IOException {

	//false = nonexisting email, true - existing email
	boolean emailExists = false;
        String checkEmail = "SELECT email FROM Users WHERE email = ?";
        try {
	    //Make prepared statement, fill placeholders and execute the query
            PreparedStatement checkMail =
		    connection.prepareStatement(checkEmail);
            checkMail.setString(1, email);
            ResultSet rs = checkMail.executeQuery();


	    if (rs.next()) { //if there's a resultset, the email exists
                emailExists = true;
                return emailExists;
            } else { //if resultset is empty, the email does not exists
                return emailExists;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOmysqlImpl.class.getName())
		    .log(Level.SEVERE, null, ex);
        }
        emailExists = true;
        return emailExists;

    }



}
