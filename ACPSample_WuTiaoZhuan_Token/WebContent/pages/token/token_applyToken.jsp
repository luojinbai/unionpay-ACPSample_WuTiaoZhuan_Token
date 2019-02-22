<%@ page language="java" contentType="text/html; charset=UTF-8"  import="java.text.*" import="java.util.*" 
    pageEncoding="UTF-8"%>

<form class="api-form" method="post" action="<%request.getContextPath();%>/ACPSample_WuTiaoZhuan_Token/form03_6_Token_ApplyToken" target="_blank">
<p>
<label>商户号：</label>
<input id="merId" type="text" name="merId" placeholder="" value="777290058110097" title="默认商户号仅作为联调测试使用，正式上线还请使用正式申请的商户号" required="required"/>
</p>
<p>
<label>订单发送时间：</label>
<input id="txnTime" type="text" name="txnTime" placeholder="开通并消费交易的订单发送时间" value="" title="开通并消费交易的订单发送时间" required="required"/>
<p>
<label>开通并消费交易的订单号：</label>
<input id="orderId" type="text" name="orderId" placeholder="开通并消费交易的订单号" value="" title="填写开通并支付交易的订单号" required="required"/>
</p>
<p>
<label>&nbsp;</label>
<input type="submit" class="button" value="开通查询" />
<input type="button" class="showFaqBtn" value="遇到问题？" />
</p>
</form>

<div class="question">
<hr />
<h4>消费撤销您可能会遇到...</h4>
<p class="faq">
暂无
</p>
<hr />
 <jsp:include  page="/pages/more_faq.jsp"/>
</div>