#!/bin/bash
echo -ne "==>Installing PIPX && ETH-BROWNIE"
python3 -m pip install --user pipx
python3 -m pipx ensurepath
pipx install eth-brownie
brownie init
