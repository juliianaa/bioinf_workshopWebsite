/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.web_login_servlets;

/**
 *
 * @author raozinga
 */
public class User {
    private String username;
    private String password;
    private Boolean loggedin;
    
    /**
     *
     * @param username
     * @param password
     */
    public User(String username, String password) {
        this.username = username;
        this.password = password;
        this.loggedin = false;
    
    }

    /**
     *
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
    public String getPassword() {
        return password;
    }

    /**
     *
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     *
     * @return
     */
    public Boolean getLoggedin() {
        return loggedin;
    }

    /**
     *
     * @param loggedin
     */
    public void setLoggedin(Boolean loggedin) {
        this.loggedin = loggedin;
    }
}
    