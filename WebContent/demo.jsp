<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
        $(document).ready(function() {

            $("a.post").click(function(e) {
                e.stopPropagation();
                e.preventDefault();
                var href = this.href;
                var parts = href.split('?');
                var url = parts[0];
                var params = parts[1].split('&');
                var pp, inputs = '';
                for(var i = 0, n = params.length; i < n; i++) {
                    pp = params[i].split('=');
                    inputs += '<input type="hidden" name="' + pp[0] + '" value="' + pp[1] + '" />';
                }
                $("body").append('<form action="'+url+'" method="post" id="poster">'+inputs+'</form>');
                $("#poster").submit();
            });
        });
    </script>
</head>
<body>
 <a class="post" href="reflector.jsp?color=blue&weight=340&model=x-12&price=14.800">Post it!</a><br/>
</body>
</html>