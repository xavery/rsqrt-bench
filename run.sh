#!/usr/bin/env bash

set -e

del_tmp_report() {
  rm -f "$fname"
}

write_cmd_output() {
  local section_name=$1
  shift;

  echo -ne "## ${section_name}" >> "$fname"
  echo -ne '\n\n```\n' >> "$fname"
  "$@" >> "$fname" 2>&1
  echo -ne '```\n\n' >> "$fname"
}

touch RESULTS.md
fname=$(mktemp)
trap del_tmp_report EXIT

rm -fR build
mkdir -p build
pushd build
cmake -GNinja -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_FLAGS=-march=native \
  -DCMAKE_CXX_FLAGS=-march=native ..
ninja
popd

cpuname=$(awk -F ': ' '/model name/ { print $2 }' /proc/cpuinfo | uniq)
echo -ne "# ${cpuname}\n\n" >> "$fname"

write_cmd_output "GCC version" gcc --version
write_cmd_output "Assembly" objdump -M intel -d build/CMakeFiles/bench.dir/rsqrt.c.o

current_governor=$(cat /sys/devices/system/cpu/cpufreq/policy0/scaling_governor)
sudo cpupower frequency-set --governor performance

write_cmd_output "Output" ./build/bench

sudo cpupower frequency-set --governor ${current_governor}

cat "$fname" >> RESULTS.md
