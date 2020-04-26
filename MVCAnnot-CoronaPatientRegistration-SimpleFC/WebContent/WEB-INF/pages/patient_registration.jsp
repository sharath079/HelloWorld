<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 <%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>   

  <h1 style="color:red;text-align:center">Corona Patient Registration</h1>
  
  <form:form  modelAttribute="patCmd">
   <!--  <p style="color:red">
           <li><form:errors  path="*"/>  </li>
       </p>-->
         <table bgcolor="cyan" align="center">
             <tr>
                <td>Patient Name:: </td>
                <td><form:input path="patName"/>
                    <form:errors path="patName"/> </td>
             </tr>
             <tr>
                <td>Patient Location:: </td>
                <td><form:input path="location"/> 
                    <form:errors path="location"/></td>
             </tr>
             <tr>
                <td>Patient age:: </td>
                <td><form:input path="age"/> 
                    <form:errors path="age"/></td>
             </tr>
             <tr>
                <td>Hospital:: </td>
                <td><form:input path="hospital"/> 
                    <form:errors path="hospital"/></td>
             </tr>
             
              <tr>
                <td><input type="submit"  value="register"></td>
                <td><input type="reset"  value="cancel"> </td>
             </tr>
  
          </table>
  </form:form>