#!/usr/bin/env bash

# add '--depth 1' to reduce the source volume
GIT_OPTION=${GIT_OPTION:-'--depth 1'}

if [ ! -d src/ ]; then
	mkdir src
fi

pushd src
git clone -b poc/kni ${GIT_OPTION} https://github.com/MikeZappa87/kubernetes.git
git clone -b feature/KNI-v2 ${GIT_OPTION} https://github.com/MikeZappa87/containerd.git
git clone https://github.com/MikeZappa87/kni-network-runtime
git clone https://github.com/containernetworking/plugins.git
popd
