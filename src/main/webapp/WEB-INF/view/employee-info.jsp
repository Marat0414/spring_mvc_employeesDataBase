<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

</head>

<body>
<div class="container text-center">
    <div class="row">
        <div class="col-lg-12">
            <p>

                <%= new java.util.Date()%>

            </p>


            <h2>Employee Info</h2>
            <br>

            <form:form action="saveEmployee" modelAttribute="employee">

                <form:hidden path="id"/>

                Name<form:input path="name"/>
                <form:errors path="name"/>
                <br><br>
                Surname<form:input path="surname"/>
                <form:errors path="surname"/>
                <br><br>
                Department <form:select path="department">
                <form:option value="IT" label="Information Technology"/>
                <form:option value="HR" label="Human Resources"/>
                <form:option value="Sales" label="Sales"/>

            </form:select>
                <form:errors path="department"/>
                <br><br>
                Salary<form:input path="salary"/>
                <form:errors path="salary"/>
                <br><br>

                Phone number <form:input path="phoneNumber"/>
                <form:errors path="phoneNumber"/>
                <br><br>
                Email<form:input path="email"/>
                <form:errors path="email"/>
                <br><br>
                Nationality
                KZ <form:radiobutton path="nationality" value="Kazakh"/>
                RU<form:radiobutton path="nationality" value="Russian"/>
                BLR<form:radiobutton path="nationality" value="Belarussian"/>
                UKR<form:radiobutton path="nationality" value="Ukrainain"/>
                Other<form:radiobutton path="nationality" value="Other"/>

                <br><br>
                <input type="submit" value="OK" class="btn btn-dark action-hover">
            </form:form>

        </div>
    </div>
</div>
</body>


</html>
