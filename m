From: Rajat Jain <rajatxjain@gmail.com>
Subject: debugfs_remove_recursive() while a file is in use by userspace
Date: Mon, 28 Dec 2015 12:27:22 -0800
Message-ID: <CAA93t1pTkDpaZpQuVu0bQpxsxxUDViKU6-bLbporqkyHCJ0=mw@mail.gmail.com>
Reply-To: rajatxjain@gmail.com
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:date:message-id:subject:from:to:cc
         :content-type;
        bh=q3wLy84p7ZV30PSFeFMS1e7hxK7jm4I4nyWV1Dm4/Xk=;
        b=zRk/gAMNGGo8dM05+YxVVAKVCwQicL7JQMHEN6AsH6l4Gt2P4Zcc7D6r4ezq4ktF/O
         cfgQ8mnKZ1qx7nG4WcPmbWfv0TsmMtwbQlL3Gp+tMTuJrQPeal6J5yFn3qm0+aN62qVT
         G20DTUZXDMVYtIbHOueWtbABEq0vzl31VuY/of3g6JfcJtnN+PACdgDOM3eRVbfQhwhp
         CayTJLaDnOTRbT/4RH3l7ugQlEtj4URMYrV3WEEL7H+3BOnUvCwWE6B9b9oYpS4NPUtp
         u84TayWZP2OJ4IIDBHjZChpaznijrVT83xuEAkABzOVmPzDl7NcRiSbA6IxpQv70SFll
         gf6A==
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-newbie@vger.kernel.org
Cc: Greg Kroah-Hartman <greg@kroah.com>

Hi,

I wanted to understand the behavior taken when a module calls
debugfs_remove_recursive() on a directory, while files under that
directory may still be in use by the userspace (for instance an
ongoing read / write operation).

Does the function wait

(1) until all the currently executing file operation methods
(read/write/map etc) have returned?
OR
(2) until the user has given up all references (descriptors) to the
files under the directory (i.e. until release() method has been
called)?

Thanks,

Rajat
