package com.gepardec.cia;

import org.junit.jupiter.api.Test;

public class FroheWeihnachtenTest {

    @Test
    void test_weihnachtsTest(){
        FroheWeihnachten weihnachten = new FroheWeihnachten();
        assert weihnachten.getWeihnachtenMessage() == "Frohe Weihnachten!";
    }
}
