<%@page contentType="text/html;charset=UTF-8"%>
<HTML>
<HEAD>
<TITLE>Inputs</TITLE>
</HEAD>
<BODY>
<H2>Currency convertor</H2>
 SOAP demo

<%
String method = "35";
int methodID = 0;
if (method == null) methodID = -1;

boolean valid = true;

if(methodID != -1) methodID = Integer.parseInt(method);
switch (methodID){ 
case 35:
valid = false;
%>

<br><br>
<FORM METHOD="POST" ACTION="Result.jsp">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">

<TABLE>
<TR>
	<TD COLSPAN="1" ALIGN="LEFT">startDate (example 2016-10-01):</TD>
	<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="startDate38" SIZE=20></TD>
</TR>
<TR>
	<TD COLSPAN="1" ALIGN="LEFT">endDate (example 2016-10-05):</TD>
	<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="endDate40" SIZE=20></TD>
</TR>
<TR>
	<TD COLSPAN="1" ALIGN="LEFT">currencyName (example CZK):</TD>
	<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="currencyNames42" SIZE=20></TD>
</TR>

<TR>
	<TD COLSPAN="1" ALIGN="LEFT">
		<INPUT TYPE="SUBMIT" VALUE="Invoke">
		<INPUT TYPE="RESET" VALUE="Clear">
	</TD>
</TR>
</TABLE>
<br>
Data source : http://www.mnb.hu/arfolyamok.asmx?wsdl
</FORM>
<%
break;

}
if (valid) {
%>
Select a method to test.
<%
}
%>

</BODY>
</HTML>
