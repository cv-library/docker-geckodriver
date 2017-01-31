# geckodriver under docker

This repository can build a docker image containing geckodriver and Firefox.
It also contains a docker-compose file to orchestrate running them against
Xvfb, with x11vnc.

Run ```docker-compose up```, and geckodriver will listen on port 4444.  x11vnc
will listen on port 5900.

## Versions

Currently geckodriver 0.13 is installed along with the latest Firefox package
from Debian sid.

## Customising Firefox profile

To add extra certificates, preferences etc., see the geckodriver documentation
for how to set the Firefox profile via WebDriver capabilities:
https://github.com/mozilla/geckodriver#capabilities-examples
