<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
  <meta name="generator" content="editplus" />
  <meta name="author" content="zzarungna" />
  <meta name="description" content="memeber form" />
<style>
.info{
background:#ffffff;
}
body {
  background: #B2Fa5C; /* fallback for old browsers */
  background: -webkit-linear-gradient(right, #B2Fa5C, #B2Fa5C);
  background: -moz-linear-gradient(right, #B2Fa5C, #B2Fa5C);
  background: -o-linear-gradient(right, #B2Fa5C, #B2Fa5C);
  background: linear-gradient(to left, #B2Fa5C, #B2Fa5C);
  font-family: "Roboto", sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;      
}

</style>

</head>

<body>


 <center>
        <h3>ȸ������</h3>
               <form method="post" action="">
               
                       <table border="1" width="400" height="400" bgcolor="#ffffff">
                       
                              <tr>
                                      <td align="center" bgcolor="#FFFFCC">�̸�</td>
                                      <td><input type="text" /></td>
                              </tr>
                              <tr>
                                      <td align="center" bgcolor="#FFFFCC">���̵�</td>
                                      <td><input type="text" />
                                      <input type="submit" value="���̵� �ߺ��˻�" />
                                      </td>                                
                              </tr>
                              <tr>
                                      <td align="center" bgcolor="#FFFFCC">��ȣ</td>
                                      <td><input type="password" /></td>
                              </tr>
                              <tr>
                                      <td align="center" bgcolor="#FFFFCC">��ȣȮ��</td>
                                      <td><input type="password" /></td>
                              </tr>
                           
                              <tr>
                                      <td align="center" bgcolor="#FFFFCC">��������</td>
                                      <td>
                                             <select name="selinfor">
                                                     <option value="0">�������ּ���</option>
                                                     <option value="1">����</option>
                                                     <option value="2">�л�</option>
                    
                                             </select>
                                      </td>
                              </tr>
                              
                       </table>      
 
                       <br />
                       <input type="submit" value="�����ϱ�" />
                       <input type="reset" value="�ٽþ���" />
               </form>
               </center>

</body>
</html>