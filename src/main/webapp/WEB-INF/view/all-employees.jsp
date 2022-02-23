<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<body>

<h2>All Employees</h2>

<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operation</th>
    </tr>

    <c:forEach var="emps" items="${allEmps}">
        <c:url var="updateButton" value="/updateInfo">
                <c:param name="empId" value="${emps.id}"/>
        </c:url>
        <c:url var="deleteButton" value="/deleteInfo">
            <c:param name="empId" value="${emps.id}"/>
        </c:url>
        <tr>
            <td>${emps.name}</td>
            <td>${emps.surname}</td>
            <td>${emps.department}</td>
            <td>${emps.salary}</td>
            <td>
                <input type="button" value="Update" onclick="window.location.href = '${updateButton}'">
                <input type="button" value="Delete" onclick="window.location.href = '${deleteButton}'">
            </td>
        </tr>
    </c:forEach>

</table>

<br><br>

<input type="button" value="Add" onclick="window.location.href = 'addNewEmployee'">

</body>

</html>