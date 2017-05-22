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
        <h3>회원가입</h3>
               <form method="post" action="">
               
                       <table border="1" width="400" height="400" bgcolor="#ffffff">
                       
                              <tr>
                                      <td align="center" bgcolor="#FFFFCC">이름</td>
                                      <td><input type="text" /></td>
                              </tr>
                              <tr>
                                      <td align="center" bgcolor="#FFFFCC">아이디</td>
                                      <td><input type="text" />
                                      <input type="submit" value="아이디 중복검사" />
                                      </td>                                
                              </tr>
                              <tr>
                                      <td align="center" bgcolor="#FFFFCC">암호</td>
                                      <td><input type="password" /></td>
                              </tr>
                              <tr>
                                      <td align="center" bgcolor="#FFFFCC">암호확인</td>
                                      <td><input type="password" /></td>
                              </tr>
                           
                              <tr>
                                      <td align="center" bgcolor="#FFFFCC">가입종류</td>
                                      <td>
                                             <select name="selinfor">
                                                     <option value="0">선택해주세요</option>
                                                     <option value="1">교수</option>
                                                     <option value="2">학생</option>
                    
                                             </select>
                                      </td>
                              </tr>
                              
                       </table>      
 
                       <br />
                       <input type="submit" value="가입하기" />
                       <input type="reset" value="다시쓰기" />
               </form>
               </center>

</body>
</html>