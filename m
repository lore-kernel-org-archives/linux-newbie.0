From: James Miller <jamtat@mailsnare.net>
Subject: Re: Debian Sid startup problems
Date: Sat, 12 Jun 2004 14:04:54 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0406121354120.1825@debian-emach>
References: <5.1.0.14.1.20040611215205.01faf760@celine>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach> <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611160033.01fa0948@celine> <5.1.0.14.1.20040611183923.01fc9dc0@celine>
 <Pine.LNX.4.58.0406112102240.2201@debian-emach> <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611215205.01faf760@celine> <5.1.0.14.1.20040612111803.01fd5808@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040612111803.01fd5808@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Sat, 12 Jun 2004, Ray Olszewski wrote:

> This is a symlink to a script (in /etc/init.d). The next step (after the
> one you suggest) is to read the script and see what it does ... most
> likely, what kernel module(s) it installs. That should isolate the
> conflicting item (daemon, kernel module, or whatever).

I've appended the script to the end of this email: I don't understand very
well what it does, but I don't see any module loading going on there.
Could I ask you to take a look and see if you see anything troublesome?

>  From your earlier descriptions, it sounds like X is being stalled
> somewhere in its initialization stage. What is the last thing X reports
> doing in the log?

It seems to overwrite the previous log on every boot, doesn't it?  If so,
I've lost the error messages from previous boots (it hasn't hung the last
7 or 8 times I've rebooted, since I've commented out those things).
Should I make it hang so as to get the output?

> is not just the result of a glitch in a package that has been fixed. In
> fact, I'd go so far as to recommend a full upgrade or dist-upgrade, not
> just upgrading to the current version of xserver-xfree86 (and any
> dependencies it automatically upgrades).

I'll take that under consideration.  One question regarding this: since
I've been apt-get install(ing) kernels, does this mean when I do a
dist-upgrade I get a new kernel as well?

Thanks, James

--------------------BEGIN HOTPLUG SCRIPT-------------------------------
#!/bin/sh -e
#
# description:  Starts and stops each hotpluggable subsystem.
#               On startup, may simulate hotplug events for devices
#               that were present at boot time, before filesystems
#               used by /sbin/hotplug became available.

PATH=/sbin:/bin

[ -x /sbin/hotplug ] || exit 0

if [ ! -f /proc/sys/kernel/hotplug ]; then
   echo "Kernel hotplug support not enabled"
   exit 0
fi

[ -e /etc/default/hotplug ] && . /etc/default/hotplug

run_rcs() {
    for RC in /etc/hotplug/*.rc; do
        basename=${RC#/etc/hotplug/}
        name=${basename%.rc}
        if [ "$1" != status ]; then
            if [ "$(eval echo \$HOTPLUG_RC_$name)" = no ]; then
                continue
            fi
            echo "   $name"
        fi
        $RC $1 || echo -n " [failed]"
    done
}


case "$1" in
start)
    echo "Starting hotplug subsystem:"
    echo /sbin/hotplug > /proc/sys/kernel/hotplug
    run_rcs $1
    echo "done"
    ;;

stop)
    echo "Stopping hotplug subsystem:"
    run_rcs $1
    echo /bin/true > /proc/sys/kernel/hotplug
    echo "done"
    ;;

restart|force-reload)
    echo -n "Restarting hotplug subsystem:"
    run_rcs stop
    run_rcs start
    echo "."
    ;;

status)
    run_rcs $1
    ;;
*)
    echo "Usage: $0 {start|stop|restart|status|force-reload}" >&2
    exit 1
    ;;
esac
exit 0
------------------END HOTPLUG SCRIPT-----------------------------
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
