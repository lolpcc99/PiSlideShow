<?php
	// outputs the username that owns the running php/httpd process
	// (on a system with the "whoami" executable in the path)
	$output=null;
	$retval=null;
	echo("<html><body>\n<h3>Reboot Script</h3><form action=\"/index.html\" method=\"post\" id=\"return\" >\n");
	echo("<input type=\"submit\" value=\"return\" >");
	echo("</form>\n");
	$output = shell_exec('./cgi-bin/reboot.sh');
	echo("<pre>$output</pre></body></html>\n");
?>

