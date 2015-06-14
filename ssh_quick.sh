

# create ssh key, here, using github as a reference,
$ ssh-keygen  -t rsa -f ~/.ssh/mygithub.pem -b 2048

# create config file,  with permissions for the given key file just created.
vim ~/.ssh/config

# per my stackoverflow answer, http://stackoverflow.com/a/11251797
#Host            gitserv
#    Hostname        remote.server.com
#    IdentityFile    ~/.ssh/id_rsa.github
#    IdentitiesOnly yes


# is the ssh-agent running ?
$ ps aux | grep 'ssh'
michal          6788   0.3  0.0  2425480    188 s003  R+    2:05PM   0:00.01 grep ssh
michal          6527   0.0  0.1  2479524   2716   ??  S     1:39PM   0:00.04 /usr/bin/ssh-agent -l


# add the key to what the ssh agent knows about ,
ssh-add ~/.ssh/mygithub.pem   # And make sure the corresponding cert file exists,
							  #	using the same name as priv key, but with '.pub' appended.
 							  # ~/.ssh/mygithub.pem.pub
					

# Verify key added, seeing pub key fingerprint, 
$ ssh-add  -l
2048 b8:ae:d9:6b:a2:13:75:6c:61:31:73:3d:79:8b:d6:50 /Users/michal/.ssh/mygithub.pem (RSA)
$ 

# When running ssh command to the target host, using verbose , -v, should see that,
#	the given rsa key is offered. And that public key authentication succeeds.

