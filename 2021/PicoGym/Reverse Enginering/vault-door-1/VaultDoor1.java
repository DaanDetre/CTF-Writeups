import java.util.*;

class VaultDoor1 {
    public static void main(String args[]) {

        String output = "picoCTF{" + checkPassword() + "}";

        System.out.println(output);
    }

    public static String checkPassword() {

        char[] pass = new char[32];

               pass[0]  = 'd' ;
               pass[29] = 'a' ;
               pass[4]  = 'r' ;
               pass[2]  = '5' ;
               pass[23] = 'r' ;
               pass[3]  = 'c' ;
               pass[17] = '4' ;
               pass[1]  = '3' ;
               pass[7]  = 'b' ;
               pass[10] = '_' ;
               pass[5]  = '4' ;
               pass[9]  = '3' ;
               pass[11] = 't' ;
               pass[15] = 'c' ;
               pass[8]  = 'l' ;
               pass[12] = 'H' ;
               pass[20] = 'c' ;
               pass[14] = '_' ;
               pass[6]  = 'm' ;
               pass[24] = '5' ;
               pass[18] = 'r' ;
               pass[13] = '3' ;
               pass[19] = '4' ;
               pass[21] = 'T' ;
               pass[16] = 'H' ;
               pass[27] = '6' ;
               pass[30] = 'f' ;
               pass[25] = '_' ;
               pass[22] = '3' ;
               pass[28] = 'd' ;
               pass[26] = 'f' ;
               pass[31] = '4';

        return new String(pass);
    }
}
