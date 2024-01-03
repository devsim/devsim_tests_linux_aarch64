Please see preinstall.sh for installing prerequisites from the Anaconda Python distribution.

Please see ``travis_tests.sh`` for an example of how to setup and run the tests.

Results are sensitive to the CPU and system libraries that may be installed in your Linux distribution.

All tests pass on Amazon Linux 2023  running in a docker image on an Amazon AWS t4g.large instance.

Trial run from a Anaconda Python environment:
```
yum install cmake git
source preinstall.sh
pip install --target devsim_linux_2.7.1 devsim-2.7.1-cp37-abi3-manylinux_2_17_aarch64.manylinux2014_aarch64.whl
chmod u+x devsim_linux_2.7.1/devsim_data/testing/rundifftest.py
bash travis_tests.sh 2.7.1
```

