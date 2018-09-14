﻿<%
	String pathl = request.getContextPath();
	String basePathl = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+pathl+"/";
%>
		<!-- 本页面涉及的js函数，都在head.jsp页面中     -->
		<div id="sidebar" class="menu-min">
			<%-- 	<div id="sidebar-shortcuts">
					<div id="sidebar-shortcuts-large">
						<button class="btn btn-small btn-success" onclick="changeMenu();" title="切换菜单"><i class="icon-pencil"></i></button>
						<button class="btn btn-small btn-info" title="UI实例" onclick="window.open('<%=basePathl%>static/UI_new');"><i class="icon-eye-open"></i></button>
						<button class="btn btn-small btn-warning" title="数据字典" id="adminzidian" onclick="zidian();"><i class="icon-book"></i></button>
						<button class="btn btn-small btn-danger" title="菜单管理" id="adminmenu" onclick="menu();"><i class="icon-folder-open"></i></button>
					</div>

					<div id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span>
						<span class="btn btn-info"></span>
						<span class="btn btn-warning"></span>
						<span class="btn btn-danger"></span>
					</div>

				</div> --%><!-- #sidebar-shortcuts -->

				<ul class="nav nav-list">

					<li class="active" id="fhindex">
					  <a href="main/index"><i class="icon-dashboard"></i><span>后台首页</span></a>
					</li>



			<c:forEach items="${userMenuList}" var="menu">
				<li id="lm${menu.id }">
					  <a style="cursor:pointer;" class="dropdown-toggle" >
						<i class="${menu.menu_icon == null ? 'icon-desktop' : menu.menu_icon}"></i>
						<span>${menu.menu_name }</span>
						<b class="arrow icon-angle-down"></b>
					  </a>
					  <ul class="submenu">
							<c:forEach items="${menu.subMenu}" var="sub">
								<c:choose>
									<c:when test="${not empty sub.menu_url}">
									<li id="z${sub.id }">
									<a style="cursor:pointer;" target="mainFrame"  onclick="siMenu('z${sub.id }','lm${menu.id }','${sub.menu_name }','${sub.menu_url }')"><i class="icon-double-angle-right"></i>${sub.menu_name }</a></li>
									</c:when>
									<c:otherwise>
									<li><a href="javascript:void(0);"><i class="icon-double-angle-right"></i>${sub.menu_name }</a></li>
									</c:otherwise>
								</c:choose>
							 
							</c:forEach>
				  		</ul>
				</li>
			</c:forEach>

				</ul><!--/.nav-list-->

				<div id="sidebar-collapse"><i class="icon-double-angle-left"></i></div>

			</div><!--/#sidebar-->

