<%@page import="java.util.ArrayList"%>
<%@page import="model.TheLoai"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="card mb-3">
    <h3 class="card-header">Thể loại</h3>  
       <div class="list-group">
            <%
                ArrayList<TheLoai> dsChuDe = (ArrayList<TheLoai>)request.getAttribute("dsChuDe");
                for(TheLoai c: dsChuDe)
                {
            %>            
             <a href="san-pham?maloai=<%=c.getMaloai() %>" class="list-group-item list-group-item-action"> <i class="bi bi-arrow-right-circle"></i> <%=c.getTenloai() %> </a>
            <%
                }
            %>
        </div>   
</div>