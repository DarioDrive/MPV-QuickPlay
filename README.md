# MPV QuickPlay

A lightweight graphical launcher for playing YouTube videos and playlists with [MPV](https://mpv.io/).

MPV QuickPlay uses Zenity to provide a simple graphical interface where users can choose video quality, codec compatibility, frame rate, or audio-only playback without using terminal commands.

## Features

- **480p video** playback.
- **720p video** playback.
- **1080p video** playback.
- H.264 (AVC) codec selection for better compatibility with older hardware.
- 30 FPS and 60 FPS playback options.
- Audio-only playback.
- Play videos without MPV configuration files.
- Playlist playback.
- Simple graphical interface using Zenity.

## Requirements

The following applications must be installed:

- MPV
- yt-dlp
- Zenity

## Installation

On Debian, Ubuntu, Xubuntu and derivatives:

```bash
sudo apt update
sudo apt install mpv yt-dlp zenity
```

Clone the repository:

```bash
git clone https://github.com/DarioDrive/mpv-quickplay.git
```

Enter the project directory:

```bash
cd mpv-quickplay
```

Make the script executable:

```bash
chmod +x mpv-quickplay.sh
```

## Usage

Run the script:

```bash
./mpv-quickplay.sh
```

1. Paste a YouTube video or playlist URL.
2. Select your preferred playback mode.
3. MPV will start playing the selected content.

## Playback Modes

| Mode | Description |
|---|---|
| Video 480p | Up to 480p, 30 FPS |
| Video 480p h264 | H.264 up to 480p, 30 FPS |
| Video 720p | Up to 720p, 30 FPS |
| Video 720p h264 | H.264 up to 720p, 30 FPS |
| Video 720p h264 60 | H.264 up to 720p, higher frame rates |
| Video 1080p | Up to 1080p, 30 FPS |
| Video 1080p h264 | H.264 up to 1080p, 30 FPS |
| Video 1080p h264 60 | H.264 up to 1080p, higher frame rates |
| Solo audio | Audio-only playback |
| Video sin configuración | Playback without MPV configuration |
| Lista de reproducción | Playlist playback |

## Compatibility

H.264 playback options can be useful on older computers and graphics hardware that have limited support for newer video codecs.

Actual playback quality and performance depend on the hardware, available YouTube formats, and MPV configuration.

## License

This project is licensed under the GNU General Public License v2.0.
See the [LICENSE](LICENSE) file for details.

## Author

**DarioDrive**

GitHub: https://github.com/DarioDrive
