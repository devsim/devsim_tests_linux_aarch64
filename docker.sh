
# start colima in another window
# colima start -f
docker run -it -e DEBIAN_FRONTEND=noninteractive -e LC_ALL=C.UTF-8 -e LANG=C.UTF-8 -d --name ubuntu24_04 ubuntu:noble
docker exec ubuntu24_04 bash -c "apt update -y && apt upgrade -y && apt install -y vim git curl locales"
docker exec ubuntu24_04 bash -c "sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && locale-gen"
(cd .. && tar czf tests_aarch64.tgz devsim_tests_linux_aarch64 && docker cp tests_aarch64.tgz ubuntu24_04:/root/)
docker exec ubuntu24_04 bash -c "git config --global --add safe.directory /root/devsim_tests_linux_aarch64"
docker exec ubuntu24_04 bash -c "cd /root && tar xvf tests_aarch64.tgz"
docker exec ubuntu24_04 bash -c "cd /root && curl -L -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-aarch64.sh && bash Miniconda3-latest-Linux-aarch64.sh -b -s"
# docker attach ubuntu24_04
