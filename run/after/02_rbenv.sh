#!/bin/sh

rbenv install $(rbenv install -l | grep -v - | tail -1)
rbenv global $(rbenv global | grep -v - | tail -1)
status --is-interactive; and rbenv init - fish | source
