<%@ page import="Enums.HowWork" %><%--
  Created by IntelliJ IDEA.
  User: shiw
  Date: 13/12/19
  Time: 12:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section id="finzy-work">
    <h2 class="finzy-work-h2">How finzy works</h2>
    <p class="how-finzy-text">finzy connects personal loan borrowers with investors</p>

    <div class="finzy-img-div">
        <div class="container ">
            <div class="row">
                <% for(HowWork.work value: HowWork.work.values()){%>
                <div class="col-sm">
                    <div>
                        <img class="img-section-2" src="<%=value.image%>" alt="<%=value.name%>">
                        <p class="finzy-work-text"><%=value.message%></p>
                    </div>
                </div>
                <%}%>
            </div>
        </div>
    </div>

    <h2 class="finzy-work-h2-2">What do I need to do for a Personal Loan</h2>
    <p class="how-finzy-text">finzy makes entire borrowing process simple and user friendly <br/>You can get your loan funded in as little as 48 hours</p>
    <div class="img-finzy-work-div">
        <img class="img-finzy-work" src="image/finay_work.png" alt="How Finzy Works">
    </div>
</section>