package petstore.users;

import com.intuit.karate.junit5.Karate;

class UsersRunner {
    
    @Karate.Test
    Karate testPets() {
        return Karate.run("users").relativeTo(getClass());
    }    

}
