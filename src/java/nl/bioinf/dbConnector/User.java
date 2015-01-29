
package nl.bioinf.dbConnector;

/**
 * Re-usable class that forms the user.
 *
 * @author Tom Kral
 */
public class User {

    private String username;
    private String firstName;
    private String lastName;
    private String emailAdress;

    /**
     * COnstructor of the class.
     * @param username
     * @param firstName
     * @param lastName
     * @param emailAdress
     */
    public User(String username, String firstName, String lastName, String emailAdress) {
        this.username = username;
        this.firstName = firstName;
        this.emailAdress = emailAdress;
    }

    /**
     * Getters and setters for the variables of User.
     * @return 
     */
    public String getUsername() {
        return username;
    }

    /**
     *
     * @param username
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     *
     * @return
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     *
     * @param firstName
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     *
     * @return
     */
    public String getLastName() {
        return lastName;
    }

    /**
     *
     * @param lastName
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     *
     * @return
     */
    public String getEmailAdress() {
        return emailAdress;
    }

    /**
     *
     * @param emailAdress
     */
    public void setEmailAdress(String emailAdress) {
        this.emailAdress = emailAdress;
    }


}
