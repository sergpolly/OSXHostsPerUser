#!/bin/sh

# cleanup all previous users ...
rm /Users/AgentShared/*.logged

# login current user ...
echo "login" > /Users/AgentShared/openuser.logged
chmod 666 /Users/AgentShared/openuser.logged


