
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
     */
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmailAdress() {
        return emailAdress;
    }

    public void setEmailAdress(String emailAdress) {
        this.emailAdress = emailAdress;
    }


}
