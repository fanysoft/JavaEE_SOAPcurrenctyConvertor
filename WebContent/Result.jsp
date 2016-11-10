<%@page import="org.apache.commons.logging.Log"%>
<%@page contentType="text/html;charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>

	<H1>Result</H1>

	<jsp:useBean id="sampleMNBArfolyamServiceSoapProxyid" scope="session" class="hu.mnb.www.webservices.MNBArfolyamServiceSoapProxy" />
	<%
		if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
			sampleMNBArfolyamServiceSoapProxyid.setEndpoint(request.getParameter("endpoint"));
	%>

	<%
		try {

			String startDate_2id = request.getParameter("startDate38");
			java.lang.String startDate_2idTemp = null;
			if (!startDate_2id.equals("")) {
				startDate_2idTemp = startDate_2id;
			}
			
			String endDate_3id = request.getParameter("endDate40");
			java.lang.String endDate_3idTemp = null;
			if (!endDate_3id.equals("")) {
				endDate_3idTemp = endDate_3id;
			}
			
			String currencyNames_4id = request.getParameter("currencyNames42");
			java.lang.String currencyNames_4idTemp = null;
			if (!currencyNames_4id.equals("")) {
				currencyNames_4idTemp = currencyNames_4id;
			}
			
			java.lang.String getExchangeRates35mtemp = sampleMNBArfolyamServiceSoapProxyid.getExchangeRates(startDate_2idTemp, endDate_3idTemp, currencyNames_4idTemp);
			
			
			if (getExchangeRates35mtemp == null) {
	%>
	<%=
	"vysledek je nula " + getExchangeRates35mtemp
	%>
	<%
		} else {
				String tempResultreturnp36 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getExchangeRates35mtemp));
				String tempResultreturnp36new = tempResultreturnp36.replace("&gt;", "&gt;<br>");
	%>
	<%=
	"vysledek je validni<br><br>" + tempResultreturnp36new
	%>
	<%
		}

		} catch (Exception e) {
	%>
	Exception:
	<%=org.eclipse.jst.ws.util.JspUtils.markup(e.toString())%>
	Message:
	<%=org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage())%>
	<%
		return;
		}
	%>
</BODY>
</HTML>