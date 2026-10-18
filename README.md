Please see preinstall.sh for installing prerequisites from the Anaconda Python distribution.

Please see ``travis_tests.sh`` for an example of how to setup and run the tests.

Results are sensitive to the CPU and system libraries that may be installed in your Linux distribution.

All tests pass in a Ubuntu 24.04 image running in a docker image on an Apple M2.

Trial run from a Anaconda Python environment:
```
apt install -y cmake make libopenblas-dev
source ~/miniconda3/bin/activate
source preinstall.sh
pip install --target devsim_linux_2.11.1 devsim-2.11.1-cp39-abi3-manylinux_2_26_aarch64.manylinux_2_28_aarch64.whl
chmod u+x devsim_linux_2.11.1/devsim_data/testing/rundifftest.py
bash travis_tests.sh 2.11.1
```

See ``docker.sh`` to start an ubuntu environment on a Linux aarch64 or macOS machine.
