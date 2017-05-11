package framework;


import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import org.apache.tomcat.util.codec.binary.Base64;


public class BaseForm {
	
	
	public String ResultsetToJson(ResultSet rs, boolean isArray)
	{
		 StringBuffer sb = new StringBuffer();
		 ResultSetMetaData srd;
		 
		 try {
			 
			sb = new StringBuffer();
			srd = rs.getMetaData();
			
			if(isArray)
				sb.append("[");
			
			String columnLabel;
			int columnCnt;
			
			columnCnt = srd.getColumnCount();
			while(rs.next())
			 {
				
				sb.append("{");
				for(int i=1; i <= columnCnt; i++){
					columnLabel = srd.getColumnLabel(i);					
					sb.append("\""+columnLabel+"\":");
					sb.append("\""+rs.getString(columnLabel)+"\"");
					if(i<columnCnt)
						sb.append(",");
				}
				
				if(rs.isLast())
					sb.append("}");
				else
					sb.append("},");
				
			 }
			
			if(isArray)
				sb.append("]");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 
		 
		return sb.toString();
	}
	
}
