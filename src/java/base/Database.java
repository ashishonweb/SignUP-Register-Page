package base;

public class Database {
    static String userid;
     static String password;

    public Database(String userid,String password) {
        this.userid=userid;
        this.password=password;

    }
    public static String getUserid() {
        return userid;
    }

    public static String getPassword() {
        return password;
    }

    public static void setUserid(String userid) {
        Database.userid = userid;
    }

    public static void setPassword(String password) {
        Database.password = password;
    }

   
}