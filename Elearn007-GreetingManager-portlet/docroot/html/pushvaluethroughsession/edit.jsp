<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>
<%@ page import="javax.portlet.PortletPreferences" %>

<portlet:defineObjects/>
<%
   PortletPreferences prefs=renderRequest.getPreferences();
   String  greeting=(String)prefs.getValue("greeting","hello ,welcome to elearn007.com.");
   prefs.setValue("ifValidOrder", "false");
   prefs.store();
%>

<portlet:actionURL var="editGreetingURL">
 
   <portlet:param name="mvcPath" value="/html/pushvaluethroughsession/edit.jsp"/>
    <portlet:param name="employeeName" value="Meera Prince"/>
    <portlet:param name="employeeID" value="001"/>
</portlet:actionURL>

<aui:form action="<%= editGreetingURL %>" method="post">
    <aui:input label="greeting" name="greeting" type="text" value="<%=greeting %>" />  
    <aui:button type="submit" />
</aui:form>


<portlet:renderURL var="viewGreetingURL">
    <portlet:param name="mvcPath" value="/html/pushvaluethroughsession/view.jsp" />
</portlet:renderURL>

<p><a href="<%= viewGreetingURL %>">&larr; Back</a></p>






 