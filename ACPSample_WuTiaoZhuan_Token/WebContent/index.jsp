<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无跳转token产品示例</title>
  <link rel="stylesheet" href="static/jquery-ui.min.css">
  <script src="static/jquery-1.11.2.min.js"></script>
  <script src="static/jquery-ui.min.js"></script>
  <script src="static/demo.js"></script>
  <script>
  	$(function() {
	    setApiDemoTabs("#tabs-tab1");
	    setApiDemoTabs("#tabs-tab2");
	    setApiDemoTabs("#tabs-tab3");
	    setApiDemoTabs("#tabs-tab4");
	  });
  </script>
  <link rel="stylesheet" href="static/demo.css">
</head>

<body style="background-color:#e5eecc;">
<div id="wrapper">
<div id="header">
<h2>无跳转token产品示例</h2>

</div>

<div id="tabs-api">
  <ul>
    <li><a href="#tabs-api-1">前言</a></li>
    <li><a href="#tabs-api-2">token 银联侧开通</a></li>
    <li><a href="#tabs-api-3">token 商户侧开通</a></li>
    <li><a href="#tabs-api-4">token 银联侧开通（开通并支付）</a></li>
    <li><a href="#tabs-api-5">常见开发问题</a></li>
  </ul>
  
  <div id="tabs-api-1">
    <jsp:include  page="/pages/introduction.jsp"/>
  </div>

  <div id="tabs-api-2">
	<div id="tabs-tab1">
	  <ul>
	    <li><a href="#tabs-tab1-1">说明</a></li>
	    <li><a href="pages/token/token_openCard_front.jsp">开通（前台）</a></li>
		    <li><a href="pages/token/token_openQuery.jsp">开通查询</a></li>
		     <li><a href="pages/token/token_comsumeSMS.jsp">短信交易（消费短信）</a></li>
		    <li><a href="pages/token/token_consume.jsp">消费</a></li>
		    <li><a href="pages/token/token_deleteToken.jsp">解除标记</a></li>
			<li><a href="pages/query.jsp">交易状态查询</a></li>
			<li><a href="pages/consumeUndo.jsp">消费撤销</a></li>
			<li><a href="pages/refund.jsp">退货</a></li>
			<li><a href="pages/file_transfer.jsp">对账文件下载</a></li>
	  </ul>
	  <div id="tabs-tab1-1">
	     <jsp:include  page="/pages/token_front_intro.jsp"/>
	  </div>
	</div>
  </div>
  
   <div id="tabs-api-3">
	<div id="tabs-tab2">
	  <ul>
	   <li><a href="#tabs-tab2-1">说明</a></li>
		    <li><a href="pages/token/token_openCard_back.jsp">开通（后台）</a></li>
		    <li><a href="pages/token/token_openQuery.jsp">开通查询</a></li>
		    <li><a href="pages/token/token_openSMS.jsp">短信交易（开通短信）</a></li>
		    <li><a href="pages/token/token_comsumeSMS.jsp">短信交易（消费短信）</a></li>
		    <li><a href="pages/token/token_consume.jsp">消费</a></li>
		    <li><a href="pages/token/token_deleteToken.jsp">解除标记</a></li>
		    <li><a href="pages/token/token_updateToken.jsp">更新标记</a></li>
			<li><a href="pages/query.jsp">交易状态查询</a></li>
			<li><a href="pages/consumeUndo.jsp">消费撤销</a></li>
			<li><a href="pages/refund.jsp">退货</a></li>
			<li><a href="pages/file_transfer.jsp">对账文件下载</a></li>
	  </ul>
	  <div id="tabs-tab2-1">
	     <jsp:include  page="/pages/token_back_intro.jsp"/>
	  </div>
	</div>
  </div>
  
  
  <div id="tabs-api-4">
	  <div id="tabs-tab3">
		  <ul>
		    <li><a href="#tabs-tab3-1">说明</a></li>
		    <li><a href="pages/token/token_openAndConsume.jsp">开通并消费</a></li>
		    <li><a href="pages/token/token_applyToken.jsp">订单号申请Token</a></li>
		    <li><a href="pages/token/token_comsumeSMS.jsp">短信交易（消费短信）</a></li>
		    <li><a href="pages/token/token_consume.jsp">消费</a></li>
		    <li><a href="pages/token/token_deleteToken.jsp">解除标记</a></li>
		    <li><a href="pages/token/token_updateToken.jsp">更新标记</a></li>
			<li><a href="pages/query.jsp">交易状态查询</a></li>
			<li><a href="pages/consumeUndo.jsp">消费撤销</a></li>
			<li><a href="pages/refund.jsp">退货</a></li>
			<li><a href="pages/file_transfer.jsp">对账文件下载</a></li>
		  </ul>
		  <div id="tabs-tab3-1">
	        <jsp:include  page="/pages/token_openAndConsume_intro.jsp"/>
	      </div>
		</div>
	  </div> <!-- end of tabs-api-3-->
	  
   <div id="tabs-api-5">
    <jsp:include  page="/pages/devlopHelp.jsp"/>
  </div>
	  
  </div> <!-- end of tabs-api-->
</div><!-- end of wrapper-->
 
 
</body>
</html>