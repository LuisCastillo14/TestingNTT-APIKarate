package petstore.pets;

import com.intuit.karate.junit5.Karate;

public class PetsRunner {
    @Karate.Test
    Karate testPets() {
        return Karate.run("classpath:petstore/pets").relativeTo(getClass());
    }
}
