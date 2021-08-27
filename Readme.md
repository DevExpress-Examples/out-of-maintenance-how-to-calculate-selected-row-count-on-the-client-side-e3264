<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128538159/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E3264)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to calculate selected row count on the client side
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e3264/)**
<!-- run online end -->


<p>This example demonstrates how to calculate the selected row count of the ASPxGridView control on the client side. The client calculation only works for the current page. If an end-user changes current grid page (or another callback is occurred) the count is calculated on the server. After that, the count is calculated on the client side until the next callback. The result is displayed in ASPxGridView footer if one or more rows are selected. If there is no selected row, the result is not displayed. </p><br />


<br/>


