<% include Hero %>

<% loop $AllPages %>

    <% if $ClassName == "Blog" %>
        <% include BlogSlice Blog=$Me %>
    <% end_if %>

    <% if $ClassName == "Gallery" %>
        <% include GallerySlice Gallery=$Me %>
    <% end_if %>

    <% if $ClassName == "TextSlice" %>
        <% include TextSlice %>
    <% end_if %>

<% end_loop %>



<%--<% include GallerySlice %>--%>
<%--<% include Award %>--%>
<%--<% include MyBlog %>--%>

<%--<% include Video %>--%>




