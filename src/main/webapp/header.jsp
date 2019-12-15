<%@ page import="Enums.Header" %><%--
  Created by IntelliJ IDEA.
  User: shiw
  Date: 13/12/19
  Time: 12:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<section class="section1">
    <h1 class="heading">Quick personal loans. Low interest rates</h1>
    <div class="mid-div">
        <div class="container">
            <form action="#">
                <div class="row form-group">
                    <div class="col-sm">
                        <label for="loan-amount" class="label">Loan Amount</label>
                        <input type="text" id="loan-amount" name="name" placeholder="Upto 500000">
                    </div>
                    <div class="col-sm">
                        <label for="loan-Purpose" class="label">Loan Purpose</label>
                        <select id="loan-Purpose" name="loan-Purpose" placeholder="Select purpose">
                            <option default>Select purpose</option>
                             <% for(Header.option value: Header.option.values()){%>
                            <option value=<%=value.value%>><%=value.name%></option>
                            <%}%>
                        </select>
                    </div>
                    <div class="col-sm">
                        <label for="tenure" class="label">Tenure</label>
                        <input type="text" id="tenure" name="name" value="36 Months">
                    </div>
                    <div class="col-sm btn-div">
                        <a id="apply-2" href="#" class="nav-link"><span id="apply-text-2">APPLY NOW</span></a>

                    </div>
                </div>
            </form>
            <p class="input-below">Prepay anytime. No prepayment penalties.</p>
        </div>

        <div class="div-below-text">
            <% for(Header.borderText value: Header.borderText.values()){%>
            <h3 class="text3"><%=value.text%></h3>
            <%}%>
        </div>
    </div>
</section>