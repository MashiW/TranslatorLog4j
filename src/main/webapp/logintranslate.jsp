<%@page import="java.util.ArrayList" %>
<div>
    <form role="form" action="TranslateServlet" method="post">
        <div class="row top-buffer">

            <div class="col-md-2"></div>
            <div class="col-md-4">
                <strong>From:</strong> <br/>
                <%
                    out.println("<textarea name=\"txtFromText\" id=\"fromText\" class=\"form-control input-md\">");
                    String s1 = (String) request.getAttribute("fromText");
                    if (s1 != null) {
                        out.print(s1);
                    }

                    out.println("</textarea>");
                %>
                <br>

                <div class="top-buffer">
                    <select name="frmType" class="form-control" style="width:150px;">
                        <%
                            ArrayList<String> ar = new ArrayList<String>();
                            ar = (ArrayList<String>) request.getAttribute("list");

                            for (int i = 0; i < ar.size(); i++) {
                                if (ar.get(i).equals(request.getAttribute("selectedFrom"))) {
                                    out.println("<option selected>" + ar.get(i) + "</option>");
                                } else {
                                    out.println("<option>" + ar.get(i) + "</option>");
                                }
                            }
                        %>
                    </select>
        </div>
            </div>

            <div class="col-md-4">
                <strong> To:</strong> <br>
                <%
                    out.println("<textarea name=\"txtToText\" id=\"toText\" class=\"form-control\">");
                    String s2 = (String) request.getAttribute("textReply");
                    if (s2 != null) {
                        out.print(s2);
                    }
                    out.println("</textarea>");
                %>

        <br>

                <div class="top-buffer">
                    <select name="toType" class="form-control" style="width:150px;">
                        <%
                            ArrayList<String> ar2 = new ArrayList<String>();
                            ar2 = (ArrayList<String>) request.getAttribute("list");

                            for (int i = 0; i < ar2.size(); i++) {
                                if (ar2.get(i).equals(request.getAttribute("selectedTo"))) {
                                    out.println("<option selected>" + ar2.get(i) + "</option>");
                                } else {
                                    out.println("<option>" + ar2.get(i) + "</option>");
                                }
                            }
                        %>
                    </select>
        </div>
            </div>
            <div class="col-md-2"></div>
    </div>
        <div class="top-buffer" style="margin:5% 30% 0 30%; align-content: center;">
            <button type="button" onclick="swapText()" class="btn btn-default">Swap text</button>
            <input type="submit" class="btn btn-default" value="Translate" align>
        </div>
    </form>
    <br>

    <div class="row top-buffer">
        <div class="row">
            <h5><b>Powered by Yandex.Translate: </b><a href="http://translate.yandex.com/">
                http://translate.yandex.com/</a></h5>
        </div>
    </div>
</div>