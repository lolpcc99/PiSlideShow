<?php
	// outputs the username that owns the running php/httpd process
	// (on a system with the "whoami" executable in the path)
	$output=null;
	$retval=null;
	echo("<html><body>\n<h3>Backup Script</h3>");
	echo("<a href=fm.php#images><img src=icon/back-arrow.png  width=400></a>\n");
	echo("</form>\n");
	$output = shell_exec('./cgi-bin/backup.sh');
	echo("<pre>$output</pre></body></html>\n");
?>

