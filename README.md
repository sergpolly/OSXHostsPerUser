# OSXHostsPerUser
`hosts` modified per user login for OSX

**Purpose**: avoid distraction for some users and allow everything for the others, by automatic `/private/etc/hosts` modification upon user login.

Standard OS X GUI user login implied, while internet is considered as a sole source of bottomless distraction.

**Motivation**: Focusing on work 99% of the time implies that one doesn’t want to be bothered by things like Facebook,VK,YouTube, etc (call them services from now on). Interaction with this kind of services mostly starts with a tiny distractive pulse: “what’s up with the ___”, “check this video real quick …”, so to say, there is no real motivation, just distractive “noise”. Turned out it’s relatively easy to filter such distractive moments making it a tiny bit harder to get access to either of these services. Editing the hosts file, [for example](http://www.mikesoltys.com/2012/12/30/tool-of-the-week-blocking-distracting-websites-using-the-hosts-file/), is exactly that kind of thing. After you redirected your favorite services to nowhere (`127.0.0.1`) it would require some effort to revert things back. But, sometimes your really need to see that cat video, or reply to the Facebook message, so that your motivation becomes strong. Instead of constantly editing hosts file or manually copying it, I figureed, user switching might be the best way to go: you have a user that you login to do work (distraction free), and you have a user to enjoy your Facebook/YouTube/etc. all you need to do is to logout from one and login to the other - that easy, yet hard enough that the momentary distraction impetus doesn't get fulfilled. See [this](http://www.forbes.com/sites/anthonykosner/2012/12/04/stanfords-school-of-persuasion-bj-fogg-on-how-to-win-users-and-influence-behavior/) to read more on the ability-vs-motivation curve, see [that](http://lifehacker.com/how-i-turned-my-iphone-into-a-simple-distraction-free-1175739059) for some more blah-blah with advices on the topic.


**Setup**

* Brief description: Assuming you have at least 2 users: `work` and `free`, you would need to copy the `*.plist` files to `/Users/work(free)/Library/LaunchAgents/` folders correspondingly. Then copy 2 bash scripts `(*.sh)` along with the hosts files `(*.txt)` to `/Users/Shared` folder. Now try to logout and login to `work` or `free` users to see the effect, it should work now.
* Detailed description:
  - Created at least 2 users on your OS X machine, one for work and one for free internet: `work` and `free` correspondingly. Edit these user names as you wish.
  - clone this git repo somewhere on your machine: `git clone https://github.com/sergpolly/OSXHostsPerUser.git` and `cd` into the repo folder.
  - Next steps must be done as a root/super user/sudo whatever it officially called on OS X: just precede your commands with `sudo`.
  - Copy `com.strict_hosts.plist` to the `/Users/work/Library/LaunchAgents/` and `com.def_hosts.plist` to the `/Users/free/Library/LaunchAgents/`. It is something like the start up script, but OS X way.
  - Copy 2 bash scripts (`*.sh`) and 2 example hosts files (`*.txt`) to `/Users/Shared/` folder. These are the scripts that are going to be executed on the user login. They are replacing `/private/etc/hosts` either with the restricted one `hosts_strict.txt` or with default one (no restrictions) `hosts_def.txt`.
  - Modify `/Users/Shared/hosts_strict.txt` to add more web sites you'd like to block as described [here](http://www.mikesoltys.com/2012/12/30/tool-of-the-week-blocking-distracting-websites-using-the-hosts-file/).













