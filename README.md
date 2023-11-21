# netbird_snap
The [NetBird](https://github.com/netbirdio/netbird) client as a snap.
NetBird combines a configuration-free peer-to-peer private network and a centralized access control system in a single platform, making it easy to create secure private networks for your organization or home.

The snap is currently in `beta` waiting for your feedback.

## How to install
First, [make sure you have `snapd` installed.](https://snapcraft.io/docs/installing-snap-on-ubuntu)

Install the snap:
```
sudo snap install netbird --beta
```
Connect the snapd interfaces:
```
sudo snap connect netbird:firewall-control
sudo snap connect netbird:network-control
sudo snap connect netbird:ppp
```
Restart the netbird service:
```
sudo snap restart netbird
```
## How to use
Once the installation process done, you can connect your NetBird snap client with:
```
netbird up
```

Additionally, you can provide arguments to the `service run` daemon with:
```
sudo snap set netbird service-run-arguments="--log-level debug"
```
## How to build
[Install snapcraft](https://snapcraft.io/snapcraft).
call:
```
snapcraft
```
## Troubleshooting
NetBird log, config and socket files are stored in `$SNAP_COMMON`.
You can retrieve them from the host at `/var/snap/netbird/common`.