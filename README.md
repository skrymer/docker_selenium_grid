# Example running selenium grid in docker

## Images
* https://hub.docker.com/r/selenium/hub/
* https://hub.docker.com/r/selenium/node-chrome/

## Setup robot framework
* pip install robotframework
* pip install robotframework-selenium2library

## Chrome driver
* download driver 
* then move the file to /usr/bin directory `sudo mv chromedriver /usr/bin` 
* then goto /usr/bin directory and execute `chmod a+x chromedriver` to mark it executable. 

## Run without compose file
First start the hub `docker run -d -P --name selenium-hub selenium/hub`
Then start a chrome node `docker run -d --link selenium-hub:hub selenium/node-chrome`








