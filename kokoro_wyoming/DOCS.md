# Kokoro Wyoming

Runs [kokoro-wyoming](https://github.com/relvacode/kokoro-wyoming), a Wyoming text-to-speech server for the
Kokoro-82M model (Apache 2.0), as a Home Assistant app. The model and voices are inside the image; nothing is
downloaded at start.

After starting it, add the **Wyoming Protocol** integration with this app's hostname (shown on the Info tab)
and port **10210**, then pick Kokoro as the text-to-speech engine of a voice assistant and choose a voice
(for example `bm_george`, `bm_lewis`, `bm_daniel` or `bm_fable` for British English male voices).
