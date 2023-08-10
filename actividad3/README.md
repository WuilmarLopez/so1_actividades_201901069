# Ignorar el demas codigo :)
# Wuilmar López 201901069

```
Creando los 3 usuarios----------------------------------------------------------------------
will@GRL353:~$ sudo adduser usuario1
[sudo] password for will:
Adding user `usuario1' ...
Adding new group `usuario1' (1001) ...
Adding new user `usuario1' (1001) with group `usuario1' ...
Creating home directory `/home/usuario1' ...
Copying files from `/etc/skel' ...
New password:
Retype new password:
passwd: password updated successfully
Changing the user information for usuario1
Enter the new value, or press ENTER for the default
        Full Name []: usuario1
        Room Number []:
        Work Phone []:
        Home Phone []:
        Other []:
Is the information correct? [Y/n] y
will@GRL353:~$ sudo adduser usuario2
Adding user `usuario2' ...
Adding new group `usuario2' (1002) ...
Adding new user `usuario2' (1002) with group `usuario2' ...
Creating home directory `/home/usuario2' ...
Copying files from `/etc/skel' ...
New password:
Retype new password:
passwd: password updated successfully
Changing the user information for usuario2
Enter the new value, or press ENTER for the default
        Full Name []: usuario2
        Room Number []:
        Work Phone []:
        Home Phone []:
        Other []:
Is the information correct? [Y/n] y
will@GRL353:~$ sudo adduser usuario3
Adding user `usuario3' ...
Adding new group `usuario3' (1003) ...
Adding new user `usuario3' (1003) with group `usuario3' ...
Creating home directory `/home/usuario3' ...
Copying files from `/etc/skel' ...
New password:
Retype new password:
passwd: password updated successfully
Changing the user information for usuario3
Enter the new value, or press ENTER for the default
        Full Name []: usuario3
        Room Number []:
        Work Phone []:
        Home Phone []:
        Other []:
Is the information correct? [Y/n] y

Informacion de usuarios-----------------------------------------------------------------------------------
will@GRL353:~$ id usuario1
uid=1001(usuario1) gid=1001(usuario1) groups=1001(usuario1)
will@GRL353:~$ id usuario2
uid=1002(usuario2) gid=1002(usuario2) groups=1002(usuario2)
will@GRL353:~$ id usuario3
uid=1003(usuario3) gid=1003(usuario3) groups=1003(usuario3)

Eliminacion de usuarios-----------------------------------------------------------------------------------
will@GRL353:~$ sudo deluser --remove-home usuario3
Looking for files to backup/remove ...
Removing files ...
Removing user `usuario3' ...
Warning: group `usuario3' has no more members.
Done.
will@GRL353:~$ id usuario3
id: ‘usuario3’: no such user

Creacion de Grupos-----------------------------------------------------------------------------------
will@GRL353:~$ sudo addgroup grupo1
Adding group `grupo1' (GID 1003) ...
Done.
will@GRL353:~$ sudo addgroup grupo2
Adding group `grupo2' (GID 1004) ...
Done.
Agregacion de usuarios a grupos-----------------------------------------------------------------------------------
will@GRL353:~$ sudo adduser usuario1 grupo1
Adding user `usuario1' to group `grupo1' ...
Adding user usuario1 to group grupo1
Done.
will@GRL353:~$ sudo adduser usuario2 grupo2
Adding user `usuario2' to group `grupo2' ...
Adding user usuario2 to group grupo2
Done.

Verificacion de Membresia-----------------------------------------------------------------------------------
will@GRL353:~$ groups usuario1
usuario1 : usuario1 grupo1
will@GRL353:~$ groups usuario2
usuario2 : usuario2 grupo2

Eliminacion de Grupo-----------------------------------------------------------------------------------
will@GRL353:~$ sudo delgroup grupo2
Removing group `grupo2' ...
Done.

Creacion de Archivos y Directorios-----------------------------------------------------------------------------------
will@GRL353:~$ echo "Hola mundo" > /home/usuario1/hola_mundo.txt
-bash: /home/usuario1/hola_mundo.txt: Permission denied
will@GRL353:~$ sudo echo "Hola mundo" > /home/usuario1/hola_mundo.txt
-bash: /home/usuario1/hola_mundo.txt: Permission denied
will@GRL353:~$ echo "Hola mundo" | sudo -u usuario1 tee /home/usuario1/hola_mundo.txt
Hola mundo
will@GRL353:~$ sudo -i -u usuario1
Welcome to Ubuntu 22.04.2 LTS (GNU/Linux 5.15.90.1-microsoft-standard-WSL2 x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

This message is shown once a day. To disable it please create the
/home/usuario1/.hushlogin file.
usuario1@GRL353:~$ mkdir directorio1
usuario1@GRL353:~$ cd directorio1
usuario1@GRL353:~/directorio1$ echo "Hola desde el archivo 2" > archivo2.txt

Verificacion de permisos-----------------------------------------------------------------------------------
usuario1@GRL353:~/directorio1$ ls
archivo2.txt
usuario1@GRL353:~/directorio1$ ls -l
total 4
-rw-rw-r-- 1 usuario1 usuario1 24 Aug  9 18:09 archivo2.txt
usuario1@GRL353:~/directorio1$ ls -ld
drwxrwxr-x 2 usuario1 usuario1 4096 Aug  9 18:09 .
usuario1@GRL353:~/directorio1$ ls
archivo2.txt
usuario1@GRL353:~/directorio1$ cd ..
usuario1@GRL353:~$ ls
directorio1  hola_mundo.txt
usuario1@GRL353:~$ echo "Hola mundo" > /home/usuario1/archivo1.txt
usuario1@GRL353:~$ ls
archivo1.txt  directorio1  hola_mundo.txt

Modificacion de permisos-----------------------------------------------------------------------------------
usuario1@GRL353:~$ chmod 640 archivo1.txt
usuario1@GRL353:~$ cd directorio1
usuario1@GRL353:~/directorio1$ ls
archivo2.txt
usuario1@GRL353:~/directorio1$ chmod u+x archivo2.txt
usuario1@GRL353:~/directorio1$ ls
archivo2.txt
usuario1@GRL353:~/directorio1$ sudo chown :grupo1 archivo2.txt
[sudo] password for usuario1:
usuario1 is not in the sudoers file.  This incident will be reported.
usuario1@GRL353:~/directorio1$ ls -l archivo2.txt
-rwxrw-r-- 1 usuario1 usuario1 24 Aug  9 18:09 archivo2.txt
usuario1@GRL353:~/directorio1$ sudo chown :grupo1 archivo2.txt
[sudo] password for usuario1:
usuario1 is not in the sudoers file.  This incident will be reported.
usuario1@GRL353:~/directorio1$ ls -l archivo2.txt
-rwxrw-r-- 1 usuario1 usuario1 24 Aug  9 18:09 archivo2.txt
usuario1@GRL353:~/directorio1$ sudo -i -u will
[sudo] password for usuario1:
usuario1 is not in the sudoers file.  This incident will be reported.
usuario1@GRL353:~/directorio1$ exit
logout
will@GRL353:~$ sudo usermod -aG sudo usuario1
[sudo] password for will:
will@GRL353:~$ sudo -i -u usuario1
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

usuario1@GRL353:~$ sudo chown :grupo1 archivo2.txt
[sudo] password for usuario1:
chown: cannot access 'archivo2.txt': No such file or directory
usuario1@GRL353:~$ ls
archivo1.txt  directorio1  hola_mundo.txt
usuario1@GRL353:~$ cd directorio1
usuario1@GRL353:~/directorio1$ cd directorio1
-bash: cd: directorio1: No such file or directory
usuario1@GRL353:~/directorio1$ sudo chown :grupo1 archivo2.txt
usuario1@GRL353:~/directorio1$ cd ..
usuario1@GRL353:~$ chmod 750 directorio1
usuario1@GRL353:~$ exit
logout
will@GRL353:~$ sudo -i -u usuario2
Welcome to Ubuntu 22.04.2 LTS (GNU/Linux 5.15.90.1-microsoft-standard-WSL2 x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage


This message is shown once a day. To disable it please create the
/home/usuario2/.hushlogin file.

Comprobacion de accesos-------------------------------------------------------------------------------------------------
usuario2@GRL353:~$ cat /home/usuario1/archivo1.txt
cat: /home/usuario1/archivo1.txt: Permission denied
usuario2@GRL353:~$ cat /home/usuario1/directorio1/archivo2.txt
cat: /home/usuario1/directorio1/archivo2.txt: Permission denied
usuario2@GRL353:~$ cd /home/usuario1/
-bash: cd: /home/usuario1/: Permission denied
usuario2@GRL353:~$ exit
logout

verificacion de permisos 2-------------------------------------------------------------------------------------------------
will@GRL353:/home$ sudo -i -u usuario1
usuario1@GRL353:~$ ls
archivo1.txt  directorio1  hola_mundo.txt
usuario1@GRL353:~$ ls -l archivo1.txt
-rw-r----- 1 usuario1 usuario1 11 Aug  9 18:18 archivo1.txt
usuario1@GRL353:~$ ls -l
total 12
-rw-r----- 1 usuario1 usuario1   11 Aug  9 18:18 archivo1.txt
drwxr-x--- 2 usuario1 usuario1 4096 Aug  9 18:09 directorio1
-rw-rw-r-- 1 usuario1 usuario1   11 Aug  9 18:06 hola_mundo.txt
```
usuario1@GRL353:~$ cd directorio1
usuario1@GRL353:~/directorio1$ ls -l
total 4
-rwxrw-r-- 1 usuario1 grupo1 24 Aug  9 18:09 archivo2.txt
usuario1@GRL353:~/directorio1$
