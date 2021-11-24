<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<title>Suppliers List</title>
</head>
<body>
<div class="container">
    <div class="row">
      <div class="col">
        <table class="table">
          <thead>
            <tr>
              <th>#</th>
              <th>Supplier Name</th>
              <th>Contact Name</th>
              <th>Address</th>
              <th>City</th>
              <th>Postal Code</th>
              <th>Country</th>
              <th>Phone Number</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${supplierList }" var="supp" varStatus="status">
              <tr>
                <td>${supp.supplierID }</td>
                <td>${supp.supplierName }</td>
                <td>${supp.contactName }</td>
                <td>${supp.address }</td>
                <td>${supp.city }</td>
                <td>${supp.postalCode}</td>
                <td>${supp.country }</td>
                <td>${supp.phone }</td>
                <%-- <td>
                  <c:url value="/servlet08/remove" var="removeUrl">
                    <c:param name="id" value="${status.index }"></c:param>
                  </c:url>
                  <!-- button.btn.btn-danger>i.fas.fa-trash -->
                  <button class="btn btn-danger removeBtn" data-toggle="modal" data-target="#confirmModal1" data-link="${removeUrl }">
                    <i class="fas fa-trash"></i>
                  </button>
                </td>
                <td>
                  <c:url value="/servlet08/modify" var="modifyUrl">
                    <c:param name="id" value="${status.index }"></c:param>
                  </c:url>
                  <!-- a.btn.btn-warning>i.fas.fa-pencil -->
                  <a href="${modifyUrl }" class="btn btn-warning">
                  	<i class="fas fa-edit"></i>
                  </a>
                </td> --%>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>
    </div>
  </div>


<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>