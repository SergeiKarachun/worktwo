package by.sergo.service;

import by.sergo.models.User;
import sun.nio.cs.US_ASCII;

import java.util.HashMap;
import java.util.Map;

public class UserService {

    Map<String, User> users = new HashMap<>();
    {
        users.put("Sergo", new User("Sergo", "Sergo", "Sergo"));
    }

    static private UserService instance = new UserService();

    private UserService() { super(); }

    public User getUserByNameAndPass(String name, String password) {
        User user = users.get(name);
        if (user != null){
            if (user.getPassword().contentEquals(password)){
                return user;
            } else return null;
        }
        return null;
    }

    public static UserService getInstance() { return instance; }


}
