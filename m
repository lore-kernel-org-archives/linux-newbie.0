From: "Marco Calistri" <ik5bcu@tin.it>
Subject: Login fails with SSH on same host
Date: Fri, 23 Aug 2002 00:41:47 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020822224147.4724.qmail@linux.ik5bcu.ampr.org>
Reply-To: ik5bcu@tin.it
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello,I'm attempting to login my ssh-3.1.0 server using its ssh client on same
machine but I'm unable to do it:I always get an "Authentication failed" message:

[marco@sys3 marco]$ ssh 192.168.2.3
warning: Authentication failed.
Disconnected; connection lost (Connection closed by remote host.).

Note that I can successfully login from that machine to another and vice-versa,
the problem is just for local ssh logins.

Here a more detailed (ssh with option -v) log:

[marco@sys3 marco]$ ssh -v 192.168.2.3
debug: SshAppCommon/sshappcommon.c:133/ssh_app_get_global_regex_context:
Allocating global SshRegex context.
debug: SshConfig/sshconfig.c:2232/ssh2_parse_config: Unable to open
/home/marco/.ssh2/ssh2_config
debug: Connecting to 192.168.2.3, port 22... (SOCKS not used)
debug: Ssh2/ssh2.c:1977/main: Entering event loop.
debug: Ssh2Client/sshclient.c:1403/ssh_client_wrap: Creating transport
protocol.debug:
SshAuthMethodClient/sshauthmethodc.c:85/ssh_client_authentication_initialize:
Added "publickey" to usable methods.
debug:
SshAuthMethodClient/sshauthmethodc.c:85/ssh_client_authentication_initialize:
Added "password" to usable methods.
debug: Ssh2Client/sshclient.c:1444/ssh_client_wrap: Creating userauth protocol.
debug: client supports 2 auth methods: 'publickey,password'
debug: Ssh2Common/sshcommon.c:560/ssh_common_wrap: local ip = 192.168.2.3,
local port = 1049
debug: Ssh2Common/sshcommon.c:562/ssh_common_wrap: remote ip = 192.168.2.3,
remote port = 22
debug: SshConnection/sshconn.c:1930/ssh_conn_wrap: Wrapping...
debug: Ssh2Common/sshcommon.c:155/ssh_common_disconnect: DISCONNECT received:
Connection closed by remote host.
warning: Authentication failed.
debug: Ssh2/ssh2.c:127/client_disconnect: locally_generated = TRUE
Disconnected; connection lost (Connection closed by remote host.).
debug: Ssh2Client/sshclient.c:1478/ssh_client_destroy: Destroying client.
debug: SshConnection/sshconn.c:1982/ssh_conn_destroy: Destroying SshConn
object.debug: Ssh2Client/sshclient.c:1540/ssh_client_destroy_finalize:
Destroying client completed.
debug:
SshAuthMethodClient/sshauthmethodc.c:89/ssh_client_authentication_uninitialize:
Destroying authentication method array.
debug: SshAppCommon/sshappcommon.c:146/ssh_app_free_global_regex_context:
Freeing global SshRegex context.

I used --with-libwrap when installing to use tcpwrapper.
I attempting local logins out of X sessions.

Thanks for any comments

----------------------------------
E-Mail: Marco Calistri <ik5bcu@tin.it>
Date: 23-Aug-2002 Time: 00:22:45
Red Hat Linux release 7.3 (Valhalla) kernel 2.4.18-10
This message was sent by XFMail
----------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
