" filetype
au BufNewFile,BufRead */etc/bashrc call SetFileTypeSH("bash")
au BufNewFile,BufRead */etc/environment call SetFileTypeSH("bash")
au BufNewFile,BufRead */etc/rc.local call SetFileTypeSH("bash")
au BufNewFile,BufRead */etc/profile call SetFileTypeSH(getline(1))
au BufNewFile,BufRead */sys/* call SetFileTypeSH(getline(1))
au BufNewFile,BufRead */etc/cron.d/* setf crontab
au BufNewFile,BufRead /etc/nginx/*,/usr/local/nginx/conf/*,*/nginx/*.conf if &ft == '' | setfiletype nginx | endif 
au BufNewFile,BufRead */haproxy/*.cfg if &ft == '' | setfiletype haproxy | endif
au BufNewFile,BufRead */php/*.conf setf dosini
au BufNewFile,BufRead */Dockerfile,Dockerfile* setfiletype Dockerfile
au BufNewFile,BufRead *.dock setfiletype Dockerfile
