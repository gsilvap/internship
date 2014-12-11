#include <linux/module.h>
#include <linux/init.h>
#include <linux/kmod.h>
#include <linux/slab.h>
#include <linux/timer.h>
#include <linux/jiffies.h>
#include <asm/param.h>

struct timer_list exp_timer;

static void do_somework(unsigned long delay)
{
        printk(KERN_INFO "Timer expired after %lu\n", delay);       
        exp_timer.expires = jiffies + delay * HZ;
        //exp_timer.function = do_something;

	add_timer(&exp_timer);
}

static int __init start_module(void)
{       
        int delay = 60;

        printk(KERN_INFO "Init module\n");

        init_timer_on_stack(&exp_timer);

	// jiffies -> unit of linux time
	// HZ -> 1 second in jiffies
	// delay * HZ -> delay seconds in jiffies
        exp_timer.expires = jiffies + delay * HZ;
        exp_timer.data = delay;
        exp_timer.function = do_somework;

        add_timer(&exp_timer);

        return 0;
}

static void __exit exit_module(void)
{       
        del_timer(&exp_timer);  
        printk(KERN_INFO "Exit module\n");
}

module_init(start_module);
module_exit(exit_module);

MODULE_LICENSE("GPL");
