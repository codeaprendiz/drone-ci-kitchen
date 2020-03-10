# Installing cli

- https://docs.drone.io/cli/install/


# To set up cli

- To get your token login into UI. Click on your profile and click on "User setting."
```bash
# Example API Usage:
curl -i http://droneio.gotdns.ch/api/user \
-H "Authorization: Bearer SUBSTITUTE_TOKEN"
```

# Example CLI Usage
```bash
# Example CLI Usage:
export DRONE_SERVER=http://droneio.gotdns.ch
export DRONE_TOKEN=SUBSTITUTE_TOKEN
drone info
```