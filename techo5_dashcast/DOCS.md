# TECHO5 dashcast

Streams Home Assistant dashboards to Echo Shows running TECHO5, exactly as Home Assistant draws them
(custom cards included). Upstream: https://github.com/HuskerMinion/techo5/tree/main/dashcast

## Configuration
- **ha_url**: Home Assistant as this app reaches it, like `http://192.168.1.10:8123`.
- **ha_token**: a long-lived access token made by a Home Assistant user WITHOUT administrator rights
  (Profile > Security > Long-lived access tokens). Dashboards are shown as that user sees them.
- **dashcast_key**: a random key of at least 16 characters. Type the same key into each Echo's setup
  page (Connections > Dashboard server).
- **warm_for / warm_count**: how long, and how many, screens stay ready after a screen turns off
  (about 150-250 MB each).

Then on each Echo: set Dashboard to **Streamed** and pick the dashboard under **Dashboard to show**.
Never forward port 9555 from your router.
