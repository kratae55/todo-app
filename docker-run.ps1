﻿docker run -v ${PWD}/reports:/opt/robotframework/reports:Z -v ${PWD}/test:/opt/robotframework/tests:Z -e BROWSER=headlesschrome ppodgorsek/robot-framework:latest