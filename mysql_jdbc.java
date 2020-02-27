import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Main {

    public static void main(String[] args) throws Exception{
        String url="jdbc:mysql://106.12.31.206/bdtest";
        String user="bdtest";
        String passwd="20191212";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url, user, passwd);
            Statement statement=connection.createStatement();
            String sql="insert into t1 values('55555')";
            statement.execute(sql);
            statement.close();
            connection.close();
            System.out.println("success");
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }
}
