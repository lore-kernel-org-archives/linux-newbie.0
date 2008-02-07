From: "Rajat Jain" <Rajat.Jain@infogain.com>
Subject: Use of IRQF_DISABLED along with IRQF_SHARED
Date: Thu, 7 Feb 2008 15:56:45 +0530
Message-ID: <C86899CCB10A6C4E93D5978DCB232D4B07A66D47@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org


Hi,

This is regarding the following code in kernel/irq/handle.c. Consider the case of a shared IRQ line, where two handlers are registered such that first handler does not specify IRQF_DISABLED, but the second one does. But it seems both the handlers will be called IRQs ENABLED (which is certainly not what the second handler expects). 

I also checked but could not find anything that stops me from registering two shared ISRs - one with IRQF_DISABLED & another without this flag. Am I missing something here?

irqreturn_t handle_IRQ_event(unsigned int irq, struct irqaction *action)
{
    irqreturn_t ret, retval = IRQ_NONE;
    unsigned int status = 0;

    handle_dynamic_tick(action);

    if (!(action->flags & IRQF_DISABLED))
        local_irq_enable_in_hardirq();

    do {
        ret = action->handler(irq, action->dev_id);
        if (ret == IRQ_HANDLED)
            status |= action->flags;
        retval |= ret;
        action = action->next;
    } while (action);

    if (status & IRQF_SAMPLE_RANDOM)
        add_interrupt_randomness(irq);
    local_irq_disable();

    return retval;
}

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
