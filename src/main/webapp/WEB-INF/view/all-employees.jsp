<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

    <title> All employees of Our corporation</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>

<body>
<div class="container text-center my-3">
    <div class="row">
        <div class="col-lg-12">
            <p>
                <%= new java.util.Date()%>

            </p>

            <h1>All employees</h1>
            <br>

            <table class = "table table-bordered table-hover">
                <tr>
                    <th>Name</th>
                    <th>Surname</th>
                    <th>Department</th>
                    <th>Salary</th>
                    <th>Phone number</th>
                    <th>Email</th>
                    <th>Nationality</th>
                    <th>Operations</th>
                </tr>

                <c:forEach var="emp" items="${allEmps}">

                    <c:url var="updateButton" value="/updateInfo">
                        <c:param name="empId" value="${emp.id}"/>

                    </c:url>

                    <c:url var="deleteButton" value="/deleteEmployee">
                        <c:param name="empId" value="${emp.id}"/>

                    </c:url>

                    <tr>
                        <td> ${emp.name}</td>
                        <td> ${emp.surname}</td>
                        <td> ${emp.department}</td>
                        <td> ${emp.salary}</td>
                        <td> ${emp.phoneNumber}</td>
                        <td> ${emp.email}</td>
                        <td>${emp.nationality}</td>
                        <td>
                            <input type="button" value="Update" class="btn btn-success"
                                   onclick="window.location.href= '${updateButton} ' "/>

                            <input type="button" value="Delete" class="btn btn-warning"
                                   onclick="window.location.href= '${deleteButton}' "/>

                        </td>

                    </tr>


                </c:forEach>

            </table>
            <br>

            <input type="button" value="Add" class="btn btn-danger"
                   onclick="window.location.href= 'addNewEmployee'"/>


        </div>


    </div>
</div>
</body>


</html>
