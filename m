From: "Eve Atley" <eatley@wowcorp.com>
Subject: RE: Some users locked out of ssh and sftp?
Date: Mon, 14 Mar 2005 16:54:50 -0500
Message-ID: <00d201c528e0$723cf4f0$4f0aa8c0@lanadmin>
References: <5.1.0.14.1.20050314113523.01f4ed18@celine>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
In-Reply-To: <5.1.0.14.1.20050314113523.01f4ed18@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Ray Olszewski' <ray@comarre.com>, linux-newbie@vger.kernel.org


Thanks for the info on locate; I didn't realize it was database-driven.
More details on the SSH issue here. I checked the session log for WinSCP and
here are the results. 
I will include here a non-working session (keyur@local) as well as a working
session (gagan@local).


NON-WORKING
--------------------------------

. 2005-03-14 16:48:22.233
--------------------------------------------------------------------------
. 2005-03-14 16:48:22.233 WinSCP Version 3.7.3 (Build 265) (OS 5.0.2195
Service Pack 4)
. 2005-03-14 16:48:22.233 Login time: Monday, March 14, 2005 4:48:22 PM
. 2005-03-14 16:48:22.233
--------------------------------------------------------------------------
. 2005-03-14 16:48:22.233 Session name: keyur@local
. 2005-03-14 16:48:22.233 Host name: 192.168.10.57 (Port: 22)
. 2005-03-14 16:48:22.233 User name: keyur (Password: Yes, Key file: No)
. 2005-03-14 16:48:22.233 Transfer Protocol: SFTP (SCP)
. 2005-03-14 16:48:22.233 SSH protocol version: 2; Compression: No
. 2005-03-14 16:48:22.233 Agent forwarding: No; TIS/CryptoCard: No; KI: Yes;
GSSAPI: No
. 2005-03-14 16:48:22.233 Ciphers: aes,blowfish,3des,WARN,des; Ssh2DES: No
. 2005-03-14 16:48:22.233 Ping type: -, Ping interval: 30 sec; Timeout: 15
sec
. 2005-03-14 16:48:22.233 SSH Bugs: -,-,-,-,-,-,-,-
. 2005-03-14 16:48:22.243 SFTP Bugs: -,-
. 2005-03-14 16:48:22.243 Proxy: none
. 2005-03-14 16:48:22.243 Return code variable: Autodetect; Lookup user
groups: Yes
. 2005-03-14 16:48:22.243 Shell: default, EOL: 0
. 2005-03-14 16:48:22.243 Local directory: default, Remote directory: home,
Update: No, Cache: Yes
. 2005-03-14 16:48:22.243 Cache directory changes: Yes, Permanent: Yes
. 2005-03-14 16:48:22.243 Clear aliases: Yes, Unset nat.vars: Yes, Resolve
symlinks: Yes
. 2005-03-14 16:48:22.243 Alias LS: No, Ign LS warn: Yes, Scp1 Comp: No
. 2005-03-14 16:48:22.243
--------------------------------------------------------------------------
. 2005-03-14 16:48:22.243 Looking up host "192.168.10.57"
. 2005-03-14 16:48:22.243 Connecting to 192.168.10.57 port 22
. 2005-03-14 16:48:22.253 Server version: SSH-1.99-OpenSSH_3.5p1
. 2005-03-14 16:48:22.253 We claim version: SSH-2.0-WinSCP_release_3.7.3
. 2005-03-14 16:48:22.253 Using SSH protocol version 2
. 2005-03-14 16:48:22.263 Doing Diffie-Hellman group exchange
. 2005-03-14 16:48:22.303 Doing Diffie-Hellman key exchange
. 2005-03-14 16:48:25.127 Host key fingerprint is:
. 2005-03-14 16:48:25.127 ssh-rsa 1024
70:ea:61:3a:cb:96:f9:02:3b:99:4f:81:da:93:a1:06
. 2005-03-14 16:48:25.137 Initialised AES-256 client->server encryption
. 2005-03-14 16:48:25.137 Initialised HMAC-SHA1 client->server MAC algorithm
. 2005-03-14 16:48:25.137 Initialised AES-256 server->client encryption
. 2005-03-14 16:48:25.137 Initialised HMAC-SHA1 server->client MAC algorithm
! 2005-03-14 16:48:25.137 Using username "keyur".
. 2005-03-14 16:48:25.147 Keyboard-interactive authentication refused
. 2005-03-14 16:48:25.147 Session password prompt (keyur@192.168.10.57's
password: )
. 2005-03-14 16:48:25.147 Using stored password.
. 2005-03-14 16:48:25.147 Sent password
! 2005-03-14 16:48:27.501 Access denied
. 2005-03-14 16:48:27.501 Access denied
. 2005-03-14 16:48:27.501 Session password prompt (keyur@192.168.10.57's
password: )
. 2005-03-14 16:48:27.501 Asking user for password.
. 2005-03-14 16:48:28.462 Sent password
! 2005-03-14 16:48:30.816 Access denied
. 2005-03-14 16:48:30.816 Access denied
. 2005-03-14 16:48:30.816 Session password prompt (keyur@192.168.10.57's
password: )
. 2005-03-14 16:48:30.816 Asking user for password.
. 2005-03-14 16:48:31.527 Unable to authenticate
. 2005-03-14 16:48:31.527 Attempt to close connection due to fatal
exception:
* 2005-03-14 16:48:31.527 Unable to authenticate
. 2005-03-14 16:48:31.527 Closing connection.
* 2005-03-14 16:48:31.537 (ESshFatal) Authentication failed.
* 2005-03-14 16:48:31.537 Authentication log (see session log for details):
* 2005-03-14 16:48:31.537 Using username "keyur".
* 2005-03-14 16:48:31.537 Access denied
* 2005-03-14 16:48:31.537 Access denied
* 2005-03-14 16:48:31.537 
* 2005-03-14 16:48:31.537 Unable to authenticate

WORKING
--------------

. 2005-03-14 16:52:19.965
--------------------------------------------------------------------------
. 2005-03-14 16:52:20.005 WinSCP Version 3.7.3 (Build 265) (OS 5.0.2195
Service Pack 4)
. 2005-03-14 16:52:20.005 Login time: Monday, March 14, 2005 4:52:20 PM
. 2005-03-14 16:52:20.005
--------------------------------------------------------------------------
. 2005-03-14 16:52:20.005 Session name: gagan@local
. 2005-03-14 16:52:20.005 Host name: 192.168.10.57 (Port: 22)
. 2005-03-14 16:52:20.005 User name: gagan (Password: Yes, Key file: No)
. 2005-03-14 16:52:20.005 Transfer Protocol: SFTP (SCP)
. 2005-03-14 16:52:20.005 SSH protocol version: 2; Compression: No
. 2005-03-14 16:52:20.005 Agent forwarding: No; TIS/CryptoCard: No; KI: Yes;
GSSAPI: No
. 2005-03-14 16:52:20.005 Ciphers: aes,blowfish,3des,WARN,des; Ssh2DES: No
. 2005-03-14 16:52:20.005 Ping type: -, Ping interval: 30 sec; Timeout: 15
sec
. 2005-03-14 16:52:20.005 SSH Bugs: -,-,-,-,-,-,-,-
. 2005-03-14 16:52:20.005 SFTP Bugs: -,-
. 2005-03-14 16:52:20.005 Proxy: none
. 2005-03-14 16:52:20.005 Return code variable: Autodetect; Lookup user
groups: Yes
. 2005-03-14 16:52:20.005 Shell: default, EOL: 0
. 2005-03-14 16:52:20.005 Local directory: default, Remote directory: home,
Update: No, Cache: Yes
. 2005-03-14 16:52:20.005 Cache directory changes: Yes, Permanent: Yes
. 2005-03-14 16:52:20.005 Clear aliases: Yes, Unset nat.vars: Yes, Resolve
symlinks: Yes
. 2005-03-14 16:52:20.005 Alias LS: No, Ign LS warn: Yes, Scp1 Comp: No
. 2005-03-14 16:52:20.005
--------------------------------------------------------------------------
. 2005-03-14 16:52:20.005 Looking up host "192.168.10.57"
. 2005-03-14 16:52:20.005 Connecting to 192.168.10.57 port 22
. 2005-03-14 16:52:20.055 Server version: SSH-1.99-OpenSSH_3.5p1
. 2005-03-14 16:52:20.055 We claim version: SSH-2.0-WinSCP_release_3.7.3
. 2005-03-14 16:52:20.055 Using SSH protocol version 2
. 2005-03-14 16:52:20.055 Doing Diffie-Hellman group exchange
. 2005-03-14 16:52:20.105 Doing Diffie-Hellman key exchange
. 2005-03-14 16:52:22.979 Host key fingerprint is:
. 2005-03-14 16:52:22.979 ssh-rsa 1024
70:ea:61:3a:cb:96:f9:02:3b:99:4f:81:da:93:a1:06
. 2005-03-14 16:52:22.979 Initialised AES-256 client->server encryption
. 2005-03-14 16:52:22.979 Initialised HMAC-SHA1 client->server MAC algorithm
. 2005-03-14 16:52:22.989 Initialised AES-256 server->client encryption
. 2005-03-14 16:52:22.989 Initialised HMAC-SHA1 server->client MAC algorithm
! 2005-03-14 16:52:22.989 Using username "gagan".
. 2005-03-14 16:52:22.999 Keyboard-interactive authentication refused
. 2005-03-14 16:52:22.999 Session password prompt (gagan@192.168.10.57's
password: )
. 2005-03-14 16:52:22.999 Using stored password.
. 2005-03-14 16:52:22.999 Sent password
. 2005-03-14 16:52:23.009 Access granted
. 2005-03-14 16:52:23.009 Opened channel for session
. 2005-03-14 16:52:23.029 Started a shell/command
. 2005-03-14 16:52:23.029
--------------------------------------------------------------------------
. 2005-03-14 16:52:23.029 Using SFTP protocol.
. 2005-03-14 16:52:23.029 Doing startup conversation with host.
> 2005-03-14 16:52:23.029 Type: SSH_FXP_INIT, Size: 5, Number: -1
< 2005-03-14 16:52:23.029 Type: SSH_FXP_VERSION, Size: 5, Number: -1
. 2005-03-14 16:52:23.029 SFTP version 3 negotiated.
> 2005-03-14 16:52:23.029 Type: SSH_FXP_EXTENDED, Size: 38, Number: 200
< 2005-03-14 16:52:23.029 Type: SSH_FXP_STATUS, Size: 38, Number: 200
< 2005-03-14 16:52:23.029 Status/error code: 8
. 2005-03-14 16:52:23.029 Server does not recognise WinSCP.
. 2005-03-14 16:52:23.039 Getting current directory name.
. 2005-03-14 16:52:23.039 Getting real path for '.'
> 2005-03-14 16:52:23.039 Type: SSH_FXP_REALPATH, Size: 10, Number: 528
< 2005-03-14 16:52:23.039 Type: SSH_FXP_NAME, Size: 43, Number: 528
. 2005-03-14 16:52:23.039 Real path is '/home/gagan'
. 2005-03-14 16:52:23.039 Listing directory "/home/gagan".
> 2005-03-14 16:52:23.039 Type: SSH_FXP_OPENDIR, Size: 20, Number: 779
< 2005-03-14 16:52:23.039 Type: SSH_FXP_HANDLE, Size: 13, Number: 779
> 2005-03-14 16:52:23.039 Type: SSH_FXP_READDIR, Size: 13, Number: 1036
< 2005-03-14 16:52:23.049 Type: SSH_FXP_NAME, Size: 783, Number: 1036
> 2005-03-14 16:52:23.049 Type: SSH_FXP_READDIR, Size: 13, Number: 1292
. 2005-03-14 16:52:23.049 Reading symlink "marketing".
> 2005-03-14 16:52:23.049 Type: SSH_FXP_READLINK, Size: 30, Number: 1555
> 2005-03-14 16:52:23.049 Type: SSH_FXP_STAT, Size: 30, Number: 1809
< 2005-03-14 16:52:23.049 Type: SSH_FXP_STATUS, Size: 28, Number: 1292
. 2005-03-14 16:52:23.049 Storing reserved response
< 2005-03-14 16:52:23.059 Type: SSH_FXP_NAME, Size: 65, Number: 1555
< 2005-03-14 16:52:23.180 Type: SSH_FXP_ATTRS, Size: 37, Number: 1809
. 2005-03-14 16:52:23.180 Reading symlink "public".
> 2005-03-14 16:52:23.180 Type: SSH_FXP_READLINK, Size: 27, Number: 2067
> 2005-03-14 16:52:23.180 Type: SSH_FXP_STAT, Size: 27, Number: 2321
< 2005-03-14 16:52:23.190 Type: SSH_FXP_NAME, Size: 59, Number: 2067
< 2005-03-14 16:52:23.190 Type: SSH_FXP_ATTRS, Size: 37, Number: 2321
. 2005-03-14 16:52:23.190 Reading symlink "wowerpresumes".
> 2005-03-14 16:52:23.190 Type: SSH_FXP_READLINK, Size: 34, Number: 2579
> 2005-03-14 16:52:23.190 Type: SSH_FXP_STAT, Size: 34, Number: 2833
< 2005-03-14 16:52:23.190 Type: SSH_FXP_NAME, Size: 73, Number: 2579
< 2005-03-14 16:52:23.200 Type: SSH_FXP_ATTRS, Size: 37, Number: 2833
. 2005-03-14 16:52:23.200 Reading symlink "wow_resumes".
> 2005-03-14 16:52:23.200 Type: SSH_FXP_READLINK, Size: 32, Number: 3091
> 2005-03-14 16:52:23.200 Type: SSH_FXP_STAT, Size: 32, Number: 3345
< 2005-03-14 16:52:23.200 Type: SSH_FXP_NAME, Size: 69, Number: 3091
< 2005-03-14 16:52:23.200 Type: SSH_FXP_ATTRS, Size: 37, Number: 3345
. 2005-03-14 16:52:23.200 Reading symlink "technical".
> 2005-03-14 16:52:23.200 Type: SSH_FXP_READLINK, Size: 30, Number: 3603
> 2005-03-14 16:52:23.200 Type: SSH_FXP_STAT, Size: 30, Number: 3857
< 2005-03-14 16:52:23.210 Type: SSH_FXP_NAME, Size: 65, Number: 3603
< 2005-03-14 16:52:23.210 Type: SSH_FXP_ATTRS, Size: 37, Number: 3857
< 2005-03-14 16:52:23.210 Status/error code: 1
> 2005-03-14 16:52:23.210 Type: SSH_FXP_CLOSE, Size: 13, Number: 4100
. 2005-03-14 16:52:23.210 Startup conversation with host finished.
. 2005-03-14 16:52:26.304 Closing connection.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
