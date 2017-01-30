#! /bin/sh

mkdir -p build
NOW=`date +%Y%m%d-%H%M`

export-map ${MB_STYLE_A1} -w=950mm -h=594mm -dpi=288  -b="-77.3279 -1.2743 -77.1558 -1.1419" -t="${MB_TOKEN}" -o=build/nemopare-A1-288dpi-${NOW}.png

export-map ${MB_STYLE_A1} -w=950mm -h=594mm -dpi=288  -b="-77.2664 -1.359 -77.0702 -1.2332" -t="${MB_TOKEN}" -o=build/kiwaro-A1-288dpi-${NOW}.png

export-map ${MB_STYLE_LARGE} -w=240cm -h=150cm -dpi=192  -b="-77.2664 -1.359 -77.0702 -1.2332" -t="${MB_TOKEN}" -o=build/kiwaro-large-192dpi-${NOW}.png

export-map ${MB_STYLE_LARGE} -w=240cm -h=150cm -dpi=192  -b="-77.3279 -1.2743 -77.1558 -1.143" -t="${MB_TOKEN}" -o=build/nemopare-large-192dpi-${NOW}.png

# Akaro Draft
export-map ${MB_STYLE_CAMILO} -w=230cm -h=100cm --dpi=192  -b="-77.292 -1.454 -77.02132 -1.3359" -t="${MB_TOKEN}" -o=build/akaro-large-192dpi-${NOW}.png

# Damointaro Draft
export-map ${MB_STYLE_CAMILO} -w=100cm -h=130cm --dpi=192  -b="-77.4061 -1.45086 -77.25154 -1.25261" -t="${MB_TOKEN}" -o=build/damointaro-large-192dpi-${NOW}.png

# Upload all exported files
find maps -iname "*-${NOW}.png" -exec gdrive --refresh-token "${GDRIVE_REFRESH_TOKEN}" upload -p ${GDRIVE_PARENT} "{}" \;
