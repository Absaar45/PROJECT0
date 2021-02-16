<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Marksheet</title>
<link href='<c:url value = "http://localhost:8080/ProjectORS0/resources/css/style.css"></c:url>' rel="stylesheet" />
</head>
<body>
  <sf:form commandName="form" method="post">
   <div class="container mt-5 mb-6">
      <div class="row">
        <div class="col-lg-4 col-md-6 mx-auto">
          <div class="card card-login">
         
           
              <div class="card-header card-header-primary text-center">
                <h4 class="card-title"><c:choose>
           			<c:when test="${form.id==0}"><s:message code="label.addmarksheet" /></c:when>
           			<c:otherwise><s:message code="label.updatemarksheet"></s:message></c:otherwise>
           		</c:choose> </h4>
                <div class="social-line">
                </div>
              </div>
               
               
               <c:if test="${success != null}">
              <div class="alert alert-success">
                <div class="container">
                  <div class="alert-icon">
                    <i class="material-icons">check</i>
                  </div>
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true"><i class="material-icons">clear</i></span>
                  </button>
                  <b>Success :</b> ${success}
                </div>
              </div>
              </c:if>
              
              <c:if test="${error != null}">
              <div class="alert alert-danger">
                <div class="container">
                  <div class="alert-icon">
                    <i class="material-icons">check</i>
                  </div>
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true"><i class="material-icons">clear</i></span>
                  </button>
                  <b>Warning:</b> ${error}
                </div>
              </div>
              </c:if>
              
              <div class="card-body">
               
               <sf:hidden path="id" />
				<sf:hidden path="createdBy" />
				<sf:hidden path="modifiedBy" />
				<sf:hidden path="createdDatetime" />
				<sf:hidden path="modifiedDatetime" />
				
                <span class="bmd-form-group">
                  <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                      <i class="fa fa-user" aria-hidden="true"></i>
                    </span>
                  </div>
                <sf:select path="studentId" class = "form-control">
                <sf:option value="0"> <s:message code="label.select"></s:message> </sf:option>
                <sf:options items="${studentList}" itemValue="id" itemLabel="firstName"/>
                </sf:select>
                  
                  
                </div>
                <div style="padding-left: 50px;">
                  <font  style=" color: red;"> <sf:errors path="studentId"></sf:errors> </font>
                </div>
              </span>
              
              
               <span class="bmd-form-group">
                  <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                      <i class="fa fa-align-justify" aria-hidden="true"></i>
                    </span>
                  </div>
                  <sf:input  path="rollNo"  class="form-control" placeholder="${enterRollNo}"/>
                  
                  
                </div>
                <div style="padding-left: 50px;">
                  <font  style=" color: red;"> <sf:errors path="rollNo"></sf:errors> </font>
                </div>
              </span>
              
               <span class="bmd-form-group">
                  <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                      <i class="fa fa-align-justify" aria-hidden="true"></i>
                    </span>
                  </div>
                  <sf:input  path="physics"  class="form-control" placeholder="${enterPhysics}"/>
                  
                  
                </div>
                <div style="padding-left: 50px;">
                  <font  style=" color: red;"> <sf:errors path="physics"></sf:errors> </font>
                </div>
              </span>
              
               <span class="bmd-form-group">
                  <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                      <i class="fa fa-align-justify" aria-hidden="true"></i>
                    </span>
                  </div>
                  <sf:input  path="chemistry"  class="form-control" placeholder="${enterChemistry}"/>
                  
                  
                </div>
                <div style="padding-left: 50px;">
                  <font  style=" color: red;"> <sf:errors path="chemistry"></sf:errors> </font>
                </div>
              </span>

                <span class="bmd-form-group">
                  <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                      <i class="fa fa-align-justify" aria-hidden="true"></i>
                    </span>
                  </div>
                 <sf:input  path="maths" class="form-control"
					placeholder="${enterMaths}" />
                </div>
                <div style="padding-left: 50px;">
                  <font  style=" color: red;"><sf:errors path="maths"/></font>
                </div>
              </span>
              
              
              
               <div class=" text-center">
               	<c:choose>
              		<c:when test="${form.id==0}"> 
						<button type="submit" class="btn btn-primary " name="operation" value="save"><s:message code="label.save"/></button>
						<button type="submit" class="btn btn-danger" name="operation" value="reset"><s:message code="label.reset"/></button>
						</c:when>
						<c:otherwise>
							<button type="submit" class="btn btn-primary " name="operation" value="save"><s:message code="label.update"/></button>
							<button type="submit" class="btn btn-danger " name="operation" value="cancel"><s:message code="label.cancel"/></button>
						</c:otherwise>
				</c:choose>
              </div>
              
             
              
              
              </div>
              
             
             
           
          </div>
        </div>
      </div>
    </div>
 

</sf:form>
</body>
</html>