
#!/bin/sh

URL=$(zenity --entry \
  --title="YouTube con mpv" \
  --text="Pegá el enlace del video de YouTube:" \
  --width=500) || exit 0

[ -n "$URL" ] || exit 0

MODE=$(zenity --list --radiolist \
  --title="YouTube con mpv" \
  --text="Elegí cómo querés reproducir:" \
  --column="" \
  --column="Modo de reproducción" \
  TRUE "Video 480p" \
  FALSE "Video 480p h264" \
  FALSE "Video 720p" \
  FALSE "Video 720p h264" \
  FALSE "Video 720p h264 60" \
  FALSE "Video 1080p" \
  FALSE "Video 1080p h264" \
  FALSE "Video 1080p h264 60" \
  FALSE "Solo audio" \
  FALSE "Video sin configuración" \
  FALSE "Lista de reproducción" \
  --height=560 \
  --width=380) || exit 0

case "$MODE" in
  "Video 480p")
    exec mpv --ytdl-format="bestvideo[height<=?480][fps<=?30]+bestaudio/best[height<=?480]" "$URL"
    ;;
  "Video 480p h264")
    exec mpv --ytdl-format="bestvideo[vcodec^=avc1][height<=?480][fps<=?30]+bestaudio/best[height<=?480]" "$URL"
    ;;
  "Video 720p")
    exec mpv --ytdl-format="bestvideo[height<=?720][fps<=?30]+bestaudio/best[height<=?720]" "$URL"
    ;;
  "Video 720p h264")
    exec mpv --ytdl-format="bestvideo[vcodec^=avc1][height<=?720][fps<=?30]+bestaudio/best[height<=?720]" "$URL"
    ;;
  "Video 720p h264 60")
    exec mpv --ytdl-format="bestvideo[vcodec^=avc1][height<=?720]+bestaudio" "$URL"
    ;;
  "Video 1080p")
    exec mpv --ytdl-format="bestvideo[height<=?1080][fps<=?30]+bestaudio/best[height<=?1080]" "$URL"
    ;;
  "Video 1080p h264")
    exec mpv --ytdl-format="bestvideo[vcodec^=avc1][height<=?1080][fps<=?30]+bestaudio/best[height<=?1080]" "$URL"
    ;;
  "Video 1080p h264 60")
    exec mpv --ytdl-format="bestvideo[vcodec^=avc1][height<=?1080]+bestaudio" "$URL"
    ;;
  "Solo audio")
    exec mpv --no-video --ytdl-format="bestaudio/best" "$URL"
    ;;
  "Video sin configuración")
    exec mpv --no-config "$URL"
    ;;
  "Lista de reproducción")
    exec mpv --ytdl-raw-options=yes-playlist= "$URL"
    ;;
esac

exit 0
