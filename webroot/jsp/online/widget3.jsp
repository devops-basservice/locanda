<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<jsp:include page="../layout/header_widget.jsp" />
<!-- Start of first page -->
<div data-role="page" id="foo3">

	<div data-role="header">
		<h1>Select extras (optional)</h1>
	</div><!-- /header -->

	<div data-role="content">
			<p><strong><s:property value="dateArrival"/></strong>, <s:property value="numNights"/> nights</p>	
			<form action="goOnlineBookingGuest.action">	
<fieldset data-role="controlgroup">
                    <s:iterator value="extras" var="eachExtra"  status="extraStatus">
                  <legend></legend>
		<input type="checkbox" name="bookingExtraIds" id="checkbox-<s:property value="#extraStatus.index"/>" class="custom" value="<s:property value="#eachExtra.id"/>" />
		<label for="checkbox-<s:property value="#extraStatus.index"/>"><s:property value="#eachExtra.name"/> (&euro; <s:property value="#eachExtra.price"/> / <s:property value="#eachExtra.resourcePriceType"/> / <s:property value="eachExtra.timePriceType"/>)</label>
          </s:iterator>
    </fieldset>

	
<div class="c33l">
<div data-role="fieldcontain">
<p>&nbsp;</p>
<button type="submit" data-theme="b">NEXT</button>
	<!--<a href="index.html" data-role="button" data-theme="b">NEXT</a>
--></div>
</div>
</form>

         
	</div><!-- /content -->

	<div data-role="footer">
		<h4>Locanda Mobile Widget</h4>
	</div><!-- /header -->
</div><!-- /page -->