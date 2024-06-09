Please see preinstall.sh for installing prerequisites from the Anaconda Python distribution.

Please see ``travis_tests.sh`` for an example of how to setup and run the tests.

Results are sensitive to the CPU and system libraries that may be installed in your Linux distribution.

All tests pass in a Ubuntu latest image running in a docker image on an macOS M2 laptop.

Trial run from a Anaconda Python environment:
```
yum install cmake git
source preinstall.sh
pip install --target devsim_linux_2.8.0 devsim-2.8.0-cp37-abi3-manylinux_2_17_aarch64.manylinux2014_aarch64.whl
chmod u+x devsim_linux_2.8.0/devsim_data/testing/rundifftest.py
bash travis_tests.sh 2.8.0
```

