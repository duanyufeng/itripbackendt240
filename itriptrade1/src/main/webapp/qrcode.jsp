<%--
  Created by IntelliJ IDEA.
  User: duan
  Date: 2019/12/26
  Time: 18:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="//cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="//static.runoob.com/assets/qrcode/qrcode.min.js" type="text/javascript"></script>
    <title>生成二维码</title>
</head>
<body>
<div id="qrcode"></div>
<script>
    $.ajax({
        url : "api/wx/createCode/D1000001201706301738241e14a2",
        method : "GET",
        success : function(data) {
            new QRCode(document.getElementById('qrcode'), data.data.code_url);
        }
    });
    //查询订单
    function queryOrder() {
        $.ajax({
            url : "api/wx/queryOrderStatus/D1000001201706301738241e14a2",
            method : "GET",
            success : function(result) {
                if (result.success == 'true') {
                    var orderStatus = result.data.orderStatus;
                    if (orderStatus == 2) { //支付成功后，跳转到百度页面。
                        window.location.href="http://www.baidu.com";
                    }
                }
            }
        });
    }
    //每隔5秒查看下订单的状态
    setInterval(queryOrder, 5000);
</script>
</body>
</html>
