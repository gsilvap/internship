#include <linux/module.h>
#include <linux/init.h>
#include <linux/kmod.h>
#include <linux/slab.h>
#include <linux/timer.h>
#include <linux/jiffies.h>
#include <asm/param.h>
#include "utility.h"


#define DEBUG

struct timer_list exp_timer;

static void do_somework(unsigned long delay)
{
	// O_WRONLY Write Only
	// O_CREAT Create file
	// O_APPEND Adicionar informação ao ficheiro

	// 0644 permissions, same of -rw-r--r--
	// User: read & write
	// Group: read
	// Other: read
        struct file *fp = file_open("cenas", O_WRONLY | O_CREAT | O_APPEND, 0644);

        char buffer [50] = "";
        sprintf (buffer, "Timer expired after %lu\n", delay);

        if (fp != NULL) {
                loff_t pos = 0;
                file_write(fp, pos, buffer, sizeof(buffer));
                //file_sync(fp);
                file_close(fp);
        }

        #ifdef DEBUG
        printk(KERN_INFO "Timer expired after %lu\n", delay);   
        #endif

        exp_timer.expires = jiffies + delay * HZ;
        //exp_timer.function = do_something;

	add_timer(&exp_timer);
}

static int __init start_module(void)
{       
        int delay = 60;
        
        #ifdef DEBUG
        printk(KERN_INFO "Init module\n");
        #endif

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

        #ifdef DEBUG
        printk(KERN_INFO "Exit module\n");
        #endif
}

module_init(start_module);
module_exit(exit_module);

MODULE_LICENSE("GPL");
