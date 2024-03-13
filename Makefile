edit:
	gedit *.html *.php&
	
backup:
	tar -czvf /tmp/club.tgz /etc/rc.local /var/www

git:
	git commit -m "$m"
	git remote add origin https://github.com/lolpcc99/PiSlideShow
	git push -u origin master

gitinit:
	git init
	git add *

