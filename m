From: William Tambe <tambewilliam@gmail.com>
Subject: disabling timer interrupt until (system_state >= SYSTEM_RUNNING)
Date: Wed, 5 Feb 2020 21:15:49 -0500
Message-ID: <CAF8i9mNY_hmcB6uFKMrHPNJWAHq2xAPQeGGg4rss5XQtFY=Zmw@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=FO+Rkeho/ieEl/wiVRR87xuAuHv5nVS9KIhZ1VBBn5U=;
        b=Y23zSPKpi8xE+PPRRTqzPMfZc+9QYQYpzneNDYn8iE744DR4DYL65DcyJP8O8XFi2+
         cjUEOa9ITfasg4Lx63CrjwOB9c7KN0SxbPJZa3tT7LXaIBj9S0f5xxT+hj+Sudf20Hrn
         F6CzPxsZQiwyES6nQ8hyTQATatHyNxxuOviPSMtMKHyVHVWHlIo8G6bRHJow+wZnONJ/
         WI/oJe1eD/1EKXIyi15qJ+yX5GwpvrDfdeDULO9MlRkYFiwLMxgItwTjnmy5zX79jXhF
         G74NqbFfXuY6W5VZE/oVf/dbuDtzI+cTs5Gx2wPhEWG7RwrlPpBfxSnqUMeB3b6TB2HE
         MMGg==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>

When kernel is booting, is it safe to disable timer interrupt until
(system_state >= SYSTEM_RUNNING) ?

Wouldn't it speed up booting ?
