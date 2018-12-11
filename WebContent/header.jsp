<%@page import="controller.CartController"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.CartModel"%>
<%@page import="java.util.List"%>
<%@page import="utils.Constracts"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%
	List<CartModel> carts = new ArrayList();
	if(Constracts.MYMODEL != null){
		CartController mCartController = new CartController();
		carts = mCartController.index(Constracts.MYMODEL.getId());
	}
%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="colorlib-nav" role="navigation">
			<div class="top-menu">
				<div class="container">
					<div class="row">
						<div class="col-xs-2">
							<div id="colorlib-logo"><a href="index.jsp">Store</a></div>
						</div>
						<div class="col-xs-10 text-right menu-1">
							<ul>
								<li class="active"><a href="index.jsp">Home</a></li>
								
								
								<%
								if(Constracts.MYMODEL != null){
									%>
									<li><a href=""><%=Constracts.MYMODEL.getName() %></a></li>
									<li><a href="cart.jsp"><i class="icon-shopping-cart"></i> Cart <%=carts.size() %></a></li>	
									<%
								}else{
									%>
									<li><a href="login.jsp">Login</a></li>
									<li><a href="login.jsp"><i class="icon-shopping-cart"></i> Cart <%=carts.size() %></a></li>	
									
									<%
								}
								%>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</nav>
</body>
</html>