<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<title> </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://unpkg.com/tachyons/css/tachyons.min.css">
<body class="w-100 sans-serif">
    <section class="flex items-center">
        <div class="pa4">
            <div class="overflow-auto">
                <table class="f6 w-100 mw8 center">
                    <thead>
                    <tr class="stripe-dark">
                        <th class="fw6 tl pa3 bg-white">Id</th>
                        <th class="fw6 tl pa3 bg-white">MemberId</th>
                        <th class="fw6 tl pa3 bg-white">Title</th>
                        <th class="fw6 tl pa3 bg-white">Status</th>
                    </tr>
                    </thead>
                    <tbody class="lh-copy">
                    <c:forEach var="proposal" items="${proposals}">
                        <tr class="stripe-dark">
                            <td class="pa3">
                                <a href="/proposals/${proposal.id}">
                                    ${proposal.id}
                                </a>
                            </td>
                            <td class="pa3">${proposal.memberId}</td>
                            <td class="pa3">
                                <a href="/proposals/${proposal.id}">
                                    ${proposal.title}
                                </a>
                            </td>
                            <td class="pa3">${proposal.status}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</body>
</html>