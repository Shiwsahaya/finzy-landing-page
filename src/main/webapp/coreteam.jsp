<%--
  Created by IntelliJ IDEA.
  User: shiw
  Date: 13/12/19
  Time: 12:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="Enums.CoreTeam" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section id="core-team">
    <h2 class="core-team-heading">The Core Team</h2>
    <p class="core-team-text">The founding team of Finzy are professionals who have excelled in their fields ranging across finance, <br/> technology, product, sales, marketing and leadership.</p>
    <div class="container">
        <div class="row">
            <% for(CoreTeam.Team value: CoreTeam.Team.values()){%>
            <div class="col-sm-12 col-md-3">
                <div class="box">
                    <div class="card">
                        <img class="core-team-img" src="<%=value.image%>" alt="<%=value.name%>">
                        <p class="team-member-name"><%=value.name%></p>
                        <p class="team-designation"><%=value.designation%></p>
                        <div class="card-body">
                            <p class="about-team-member"><%=value.about%></p>
                        </div>
                    </div>
                </div>
            </div>
            <%}%>
        </div>
</div>
</section>
