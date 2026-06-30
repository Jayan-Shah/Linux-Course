# 03 - Linux Security: Mission 1

## Mission 1: The Insider Threat 🕵️‍♂️

**Priority:** HIGH
**Context:** We suspect our recently terminated sysadmin left multiple backdoors in the system to maintain access and cover their tracks. They staged their work in a specific environment on the server.

Your objective is to enter the environment, locate the briefing file, and secure the compromised assets. 

### How to Play
1. Start the mission: `docker-compose up -d --build`
2. Enter the terminal: `docker exec -it linux_security_range /bin/bash`
3. Read your briefing: `cat challenge.txt`
4. **Validation:** When you believe the system is secure, run the validation tool from anywhere: `validate_mission_1`

