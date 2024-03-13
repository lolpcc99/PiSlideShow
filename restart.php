<?php
	// outputs the username that owns the running php/httpd process
	// (on a system with the "whoami" executable in the path)
	echo("<html><body>\n");
//	echo("<form action=\"/index.html\" method=\"post\" id=\"return\" >\n");
//	echo("<input type=\"submit\" value=\"return\" >");
	echo("<h3>back</h3>\n");
	echo("<a href=fm.php#images><img src=icon/back-arrow.png  width=400></a>\n");
//	echo("</form>\n");
	$output = shell_exec('./cgi-bin/run.sh');
	echo("<pre>$output</pre></body></html>\n");
?>

