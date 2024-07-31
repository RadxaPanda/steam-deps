#! /bin/bash
set -x

script_dir=$(dirname "$(realpath "$0")")
url="https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb"

mkdir -p ${script_dir}/steam
cd ${script_dir}/steam
wget "$url"
ar x steam.deb
tar xf data.tar.xz
rm -rfv ${script_dir}/steam/{etc/,steam.deb*,data.tar.xz,control.tar.gz,debian-binary}
