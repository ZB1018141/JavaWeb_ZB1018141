package util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.Properties;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.pool.DruidDataSourceFactory;
import com.alibaba.druid.pool.DruidPooledConnection;


public class DbPoolConnection {
	private static DbPoolConnection databasePool=null;
	private static DruidDataSource dds=null;
	static {
        //Properties properties = loadPropertyFile("db_server.properties");
        //读取db.properties文件中的数据库连接信息
        InputStream in = DbPoolConnection.class.getClassLoader().getResourceAsStream("db_server.properties");
        Properties properties = new Properties();
        try {
			properties.load(in);
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
        try {
            dds = (DruidDataSource) DruidDataSourceFactory.createDataSource(properties);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
	private DbPoolConnection() {}
    public static synchronized DbPoolConnection getInstance() {
        if (null == databasePool) {
            databasePool = new DbPoolConnection();
        }
        return databasePool;
    }
    public DruidPooledConnection getConnection() throws SQLException {
        return dds.getConnection();
    }
    public static Properties loadPropertyFile(String fullFile) {

        if (null == fullFile || fullFile.equals("")) throw new IllegalArgumentException("Properties file path can not be null : " + fullFile);
        File webRootPath= new File(DbPoolConnection.class.getResource("").getPath());
        InputStream inputStream = null;
        Properties p = null;
        try {
            inputStream = new FileInputStream(new File(webRootPath
                    + File.separator + fullFile));
            p = new Properties();
            p.load(inputStream);
        } catch (FileNotFoundException e) {
            throw new IllegalArgumentException("Properties file not found: " + fullFile);
        } catch (IOException e) {
            throw new IllegalArgumentException("Properties file can not be loading: " + fullFile);
        } finally {
            try {
                if (inputStream != null)
                    inputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return p;
    }

}
