								　      ─────────────────────────────────────────     
								           产品名称：  token产品
								      JDK：  本示例JDK版本基于jdk1.6.12u5以上建议1.6.26
								                   日期：  2016-07-20
								    ─────────────────────────────────────────
───────────
 **重要**
1） 联调前请仔细阅读以下说明
2） 此工程可以跑起来测试，建议使用IE，chrome打开
3) 测试界面中的交易时一定要先配置好私钥签名证书，验签公钥证书。

                                                   全渠道代收产品消费交易示例地址为：http://IP：端口/ACPSample_WuTiaoZhuan_Token
───────────

───────────
示例工程目录结构
───────────

ACPSample-WuTiaoZhuan
  │
  ├src┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈类文件夹
  │  │
  │  ├assets ┈┈┈┈┈┈┈┈┈相关资源目录
  │  │  │
  │  ├assets ┈┈┈┈┈┈┈┈┈相关资源目录
  │  │  │  
  │  │  ├apache_httpclient┈┈┈┈┈┈┈┈┈apache中的http post方法 
  │  │  │
  │  │  ├测试环境配置文件
  │  │  │   │  
  │  │  │   └acp_sdk.properties┈┈┈┈┈┈┈┈┈【重要】 测试环境配置文件样例（证书方式签名）（使用方式请看文件里的说明）    
  │  │  │
  │  │  ├测试环境证书
  │  │  │   │
  │  │  │   ├acp_test_enc.cer ┈┈┈┈┈┈┈┈┈ 【重要】测试环境敏感信息加密证书（所有商户固定使用同一个）  
  │  │  │   │  
  │  │  │   ├acp_test_sign.pfx ┈┈┈┈┈┈┈┈┈ 【重要】 测试环境签名私钥证书（所有商户固定使用同一个）
  │  │  │   │  
  │  │  │   ├acp_test_root.cer ┈┈┈┈┈┈┈┈┈ 【重要】 测试环境验签公钥证书根证书  （所有商户固定使用同一个） 
  │  │  │   │
  │  │  │   └acp_test_middle.cer ┈┈┈┈┈┈┈┈┈【重要】 测试环境验签公钥证书中级证书  （所有商户固定使用同一个）  
  │  │  │  
  │  │  ├对账文件样例 
  │  │  │   │
  │  │  │   └802310048993424_20150905.zip  ┈┈┈┈┈┈┈┈┈提供的对账文件样例（如果需要可以参考）  
  │  │  │
  │  │  ├收单机构接入需做改动 
  │  │  │   │
  │  │  │   ├acp_test_sign_inst.pfx ┈┈┈┈┈┈┈┈┈【重要】 收单机构接入的测试环境签名私钥证书（所有机构固定使用同一个）
  │  │  │   │
  │  │  │   └机构接入需做改动.txt 
  │  │  │  
  │  │  ├生产环境配置文件
  │  │  │   │
  │  │  │   └acp_sdk.properties┈┈┈┈┈┈┈┈┈【重要】 生产环境配置文件样例（证书方式签名）（使用方式请看文件里的说明）
  │  │  │
  │  │  └生产环境证书
  │  │     │
  │  │     ├acp_prod_enc.cer┈┈┈┈┈┈┈┈┈【重要】 生产环境敏感信息加密证书（所有商户固定使用同一个）
  │  │     │
  │  │     ├acp_prod_root.cer ┈┈┈┈┈┈┈┈┈【重要】 生产环境验签公钥根证书  （所有商户固定使用同一个）  
  │  │     │
  │  │     └acp_prod_middle.cer ┈┈┈┈┈┈┈┈┈【重要】 生产环境验签公钥中级证书  （所有商户固定使用同一个）  
  │  │  
  │  ├com.unionpay.acp.demo
  │  │  │
  │  │	├token ┈┈┈┈┈┈┈┈┈无跳转token交易相关
  │  │  │   │
  │  │  │   ├Form03_6_2_Token_OpenCard_Back.java┈┈┈┈┈商户侧开通示例类（后台）
  │  │  │	│
  │  │  │	├Form03_6_2_Token_OpenCard_Front.java┈┈┈┈┈银联侧开通示例类（前台）
  │  │  │	│
  │  │  │   ├Form03_6_3_Token_OpenQuery.java┈┈┈┈┈开通查询示例类（后台）
  │  │  │	│
  │  │  │   ├Form03_6_4_Token_DeleteToken.java┈┈┈┈┈删除token示例类（后台）
  │  │  │	│ 
  │  │  │   ├Form03_6_5_Token_UpdateToken.java┈┈┈┈┈更新token示例类（后台）
  │  │  │	│
  │  │  │	├Form03_6_6_Token_ConsumeSMS.java┈┈┈┈┈消费短信示例类（后台）
  │  │  │	│
  │  │  │	├Form03_6_6_Token_OpenSMS.java┈┈┈┈┈开通短信示例类 （后台）
  │  │  │	│
  │  │  │	├Form03_6_7_Token_Consume.java┈┈┈┈┈消费示例类 （后台）
  │  │  │	│
  │  │  │	├Form03_6_7_Token_OpenAndConsume.java┈┈┈┈┈开通并付款示例类 （前台）  
  │  │  │	│
  │  │  │	└Form03_6_Token_ApplyToken.java┈┈┈┈申请toke号示例类 （前台）
  │  │  │
  │  │  ├BackRcvResponse.java┈┈┈┈┈后台通知处理示例类
  │  │  │
  │  │  ├DemoBase.java┈┈┈┈┈基础类
  │  │  │
  │  │  ├EncryptCerUpdateQuery.java┈┈┈┈┈加密证书更新示例类（后台）
  │  │  │
  │  │  ├Form03_6_3_ConsumeUndo.java┈┈┈┈┈消费撤销示例类 （后台）
  │  │  │  
  │  │  ├Form03_6_4_Refund.java┈┈┈┈┈退货示例类 （后台）
  │  │  │  
  │  │  ├Form03_6_5_Query.java┈┈┈┈┈交易状态查询示例类 （后台）
  │  │  │
  │  │  ├Form03_7_FileTransfer.java┈┈┈┈┈对账文件下载示例（后台）        
  │  │  │
  │  │  ├FrontRcvResponse.java┈┈┈┈┈前台通知处理示例类 
  │  │  │
  │  │  └多个商户号各自使用自己的私钥证书（多证书）使用方法.txt    
  │  │   
  │  ├com.unionpay.acp.sdk
  │  │  │
  │  │  ├AcpService.java┈┈┈┈┈┈全渠道SDK API接口类
  │  │  │  
  │  │  ├CertUtil.java┈┈┈┈┈┈证书处理工具类
  │  │  │
  │  │  ├HttpClient.java┈┈┈┈┈后台交易http post通讯类，如果要使用代理访问或者产生了问题那么可以自行解决或者使用apache httpClient
  │  │  │
  │  │  ├LogUtil.java┈┈┈┈┈日志工具类
  │  │  │
  │  │  ├SDKConfig.java┈┈┈┈┈┈┈读取acp_sdk.properties属性文件并填装配置的属性的配置类
  │  │  │  
  │  │  ├SDKConstants.java┈┈┈┈┈┈┈常量类
  │  │  │    
  │  │  ├SDKUtil.java┈┈┈┈┈┈┈SDK工具类，包含了对报文的签名，验签等方法
  │  │  │   
  │  │  ├SecureUtil.java┈┈┈┈┈┈┈安全相关工具类
  │  │  │   
  │  │  └SM3Digest.java┈┈┈┈┈┈┈sm3算法工具类
  │  │
  │  └web ┈┈┈┈┈┈┈┈┈ web相关类
  │      │
  │      ├AutoLoadServlet.java ┈┈┈┈┈┈初始化读取acp_sdk.properties初始化请求银联地址，证书等相关资源的servlet
  │      │
  │      └CharsetEncodingFilter.java ┈┈┈┈web请求编码过滤器
  │
  ├acp_sdk.properties ┈┈┈┈【重要】测试环境配置文件，请求银联地址，私钥签名证书，验签公钥路径，多证书的配置文件（这个文件切换生产的时候要替换成生产环境的配置文件）
  │
  ├log4j.properties ┈┈┈┈LogUtil.java日志工具类的配置文件
  │
  ├WebContent ┈┈┈┈┈┈┈┈┈┈┈┈┈┈页面文件夹
  │  │
  │  ├index.jsp ┈┈┈┈┈┈┈┈┈调试入口页面
  │  │  
  │  └WEB-INF
  │   	  │
  │       └lib（如果JAVA项目中包含这些架包，则不需要导入）
  │   	     │
  │   	     ├bcprov-jdk15on-1.54.jar---------注意包名后缀版本，低版本的bc包不支持sdk使用的部分方法
  │   	     │
  │   	     ├commons-codec-1.6.jar
  │   	     │
  │   	     ├commons-io-2.2.jar
  │   	     │
  │   	     ├commons-lang-2.5.jar
  │   	     │
  │   	     ├log4j-1.2.17.jar
  │   	     │
  │   	     ├slf4j-api-1.5.11.jar
  │   	     │
  │   	     └slf4j-log4j12-1.5.11.jar
  │
  └readme.txt ┈┈┈┈┈┈┈┈┈使用说明文本

───────────
 **注意**

1.【接口规范】该接口参考文档位置：
      接口产品规范：open.unionpay.com帮助中心 下载  产品接口规范  《无跳转产品接口规范》
      应答码规范：《平台接入接口规范-第5部分-附录》
      商户对账文件格式说明：《全渠道平台接入接口规范 第3部分 文件接口》

2.【测试商户号】开发包中使用的商户号777290058110097是open.unionpay.com注册的测试商户号，只能在入网测试环境使用；
      可以先使用这个商户调通交易(当然您也可以自己在这个网站注册一个777开头的测试商户号，自己注册后要开通权限：https://open.unionpay.com 登陆后 右上角我的测试-我的产品-将未测试的产品点击成测试状态，过10分钟后就有权限了）
      正式线上环境请替换成申请的正式商户号，并确保商户号有对应的权限，如果报了无此交易权限等错误，请联系您申请接入银联的业务人员确认您做的交易是否开通了对应的权限。
  
3.【关于配置文件】
      配置文件在src/assets文件夹下可以找到，src下面默认使用的是测试环境使用证书方式签名的配置文件。请按配置文件中的说明进行修改。
      使用时需要配置证书路径，证书文件除了生产环境的签名证书需要业务邮件发送下载方式下载，其余证书均在src/assets文件夹下面有提供，需要复制到配置文件配置的路径。

4.【测试过程遇到问题】
  1）优先在open平台中查找答案：
  	 调试过程中的问题或其他问题请在 https://open.unionpay.com/ajweb/help/faq/list 帮助中心 FAQ 搜索解决方案
             测试过程中产生的7位应答码问题疑问请在https://open.unionpay.com/ajweb/help/respCode/respCodeList 输入应答码搜索解决方案
  2）测试环境测试支付请使用测试卡号测试， FAQ搜索“测试卡”。
  3）切换生产环境要点请FAQ搜索“切换”。
  
5.【生产环境遇到问题】连接银联生产环境测试遇到的问题 如果通过open平台无法解决 请登陆merchant.unionpay.com 菜单"服务单管理"->"创建服务单"请求排查问题。

───────────

