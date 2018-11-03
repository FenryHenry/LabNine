<ul class="menu" id="menu">
        <li><a href="menu.jsp" class="menulink">Home</a></li>
	<li>
		<a href="#" class="menulink">Recursion Menu</a>
		<ul>
        	<li><a href="recursion.jsp">Recursion</a></li>			
		</ul>
	</li>
	<li>
		<a href="logout.jsp" class="menulink">Logout</a>
	</li>
</ul>

<script type="text/javascript">
	var menu=new menu.dd("menu");
	menu.init("menu","menuhover");
</script>
