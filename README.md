# OSXHostsPerUser
`hosts` modified per user login for OSX

*Purpose*: avoid distraction for some users and allow everything for the others, by automatic `/private/etc/hosts` modification upon user login.

Standard OS X GUI user login implied, while internet is considered as a sole source of bottomless distraction.

*Motivation*: Focusing on work 99% of the time implies that one doesn’t want to be bothered by things like Facebook,VK,YouTube, etc (call them services from now on). Interaction with this kind of services mostly starts with a tiny distractive pulse: “what’s up with the ___”, “check this video real quick …”, so to say, there is no real motivation, just distractive “noise”. Turned out it’s relatively easy to filter such distractive moments making it a tiny bit harder to get access to either of these services. Editing the hosts file (e.g. http://www.mikesoltys.com/2012/12/30/tool-of-the-week-blocking-distracting-websites-using-the-hosts-file/ ) is exactly that kind of thing. After you redirected your favorite services to nowhere(127.0.0.1) it would require some effort (edit the hosts) to revert things back (work for me at least). But, sometimes your really need to see that cat video, or reply to the Facebook message, so that your motivation becomes strong. Instead of constantly editing hosts file or even copying hosts file manually, I figure user switching might be the best way to go: you have a user that you login to do work (distraction free), and you have a user to enjoy your Facebook/YouTube/etc. all you need to do is to logout from one and login to the other - that easy, yet hard enough that the momentary distraction impetus does not get fulfilled. See this to read more on the ability-vs-motivation curve (http://www.forbes.com/sites/anthonykosner/2012/12/04/stanfords-school-of-persuasion-bj-fogg-on-how-to-win-users-and-influence-behavior/), see (http://lifehacker.com/how-i-turned-my-iphone-into-a-simple-distraction-free-1175739059) for some more blah-blah with advices on the topic.


*Setup*

Assuming you have at least 2 users: work and free, you would need to copy the *.plist files to /Users/work(free)/Library/LaunchAgents/.

Then copy 2 bash scripts (*.sh) along with the hosts files (*.txt) to /Users/Shared folder.

Now try to logout and login to work or free users to see the effect in place.













