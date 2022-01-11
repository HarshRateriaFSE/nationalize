<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" isELIgnored="false"%> <%@ taglib prefix="spring"
uri="http://www.springframework.org/tags"%> <%@ taglib prefix="sf"
uri="http://www.springframework.org/tags/form"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <title>Country Details</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <style>
      body {
        height: 100%;
      }

      .container {
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
      }
    </style>
  </head>

  <body class="container">
    <div class="mb-3">
      <h1 style="color: red">Welcome ${name}!!</h1>
      <br />
      <h3 style="color: gray">
        Based on the name following can be your Nationality
      </h3>
      <br />
      <table class="table table-striped">
        <c:forEach items="${countries}" var="country">
          <tr>
            <td>Country Name:</td>
            <td><c:out value="${country.country_id}" /></td>
          </tr>
          <tr>
            <td>Probability:</td>
            <td><c:out value="${country.probability}" /></td>
          </tr>
        </c:forEach>
      </table>
      <br />
      <a href="/" class="btn btn-primary">Back</a>
      <br />
      <br />
      <small style="color: grey; font-size: 50%;">made by harsh rateria...</small>
    </div>
  </body>
</html>
