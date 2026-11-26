# DLabs Home Assistant apps

Home Assistant app repository.

| App | What it does |
|---|---|
| [Kokoro Wyoming](kokoro_wyoming) | Local Kokoro text-to-speech for Assist over Wyoming (natural voices, British male voices included). Wraps [relvacode/kokoro-wyoming](https://github.com/relvacode/kokoro-wyoming). |
| [TECHO5 dashcast](techo5_dashcast) | Runs [dashcast](https://github.com/HuskerMinion/techo5/tree/main/dashcast) (TECHO5's dashboard streamer) as a Home Assistant app, so Echo Shows running TECHO5 can show any Home Assistant dashboard, custom cards included. |

Add it in Home Assistant: **Settings > Apps > App store > ⋮ > Repositories**, then paste this repository's URL.

This repository holds only a thin wrapper. dashcast itself is the upstream image
`ghcr.io/huskerminion/techo5-dashcast`, by the TECHO5 project. No tokens or keys are stored here:
you type them into the app's Configuration tab.
