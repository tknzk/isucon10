#!/bin/bash
cd /home/isucon/isuumo
git pull
cd /home/isucon/isuumo/webapp/ruby/
bundle install && sudo systemctl stop isuumo.ruby && sudo systemctl start isuumo.ruby
sleep(2)
sudo systemctl status isuumo.ruby
