<%-- 
    Document   : list.jsp
    Created on : Sep 15, 2023, 8:14:39 AM
    Author     : KHOACNTT
--%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.SanPham"%>
<%@page import="model.SanPham"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--nhung noi dung header.jsp-->
<jsp:include page="shared/header.jsp" />
<!--nhung noi dung nav.jsp-->
<jsp:include page="shared/nav.jsp" />
<section class="bg-body-secondary text-center">
    <div class="container">
        <h1 class="jumbotron-heading text-muted">Book Store</h1>
        <p class="lead text-muted mb-0">CHUYÊN CUNG CẤP SÁCH ONLINE TẠI VIỆT NAM</p>
    </div>
</section>


<div class="container" id="main-content">
    <div class="row">
        <div class="col-sm-2">
            <jsp:include page="shared/category.jsp" />             
        </div>
        <div class="col-sm-10">          
             <div class="row">       
                        <h4 class="alert alert-primary">Tiêu đề</h4>
                    <div class="col-sm-12">
                        <div class="row">                       
                <%
                    ArrayList<SanPham> dsSach =(ArrayList<SanPham>)request.getAttribute("dsSach");
                    DecimalFormat fmt = new DecimalFormat("#,##0 vnđ");
                    for(SanPham s: dsSach)
                    {
                %>
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="card mb-2">
                        <div class="card-header">
                            <%=s.getTensp() %>
                        </div>
                        <div class="card-body">
                            <img class="card-img" src="assets/images/products/<%=s.getHinh() %>" alt="Card image cap">                         
                        </div>
                        <div class="card-footer">
                            <div class="row">
                                <div class="col">
                                    <p class="btn btn-danger btn-block"><%= fmt.format(s.getDongia()) %></p>
                                </div>
                                <div class="col text-end">
                                    <a href="#" class="btn btn-success btn-block">Add to cart</a>
                                </div>
                            </div>
                        </div>
                    </div>              
                </div>
               <%
                   }
               %>
                        </div>                       
                    </div>
                </div>              
        </div>

    </div>

</div><!-- /.container -->
<!--nhung noi dung footer.jsp-->
<jsp:include page="shared/footer.jsp" />   
