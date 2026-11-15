Please see ``travis_tests.sh`` for an example of how to setup and run the tests.

Results are sensitive to the CPU and system libraries that may be installed in your Linux distribution.

All tests pass in a Ubuntu 24.04 image running in a docker image on an Apple M2.

```
apt install -y cmake make libopenblas-dev
curl -LsSf https://astral.sh | sh
source $HOME/.local/bin/env
```

Trial run from a Python 3.15 environment:
```
uv venv venv --python 3.15
source ./venv/bin/activate
uv pip install --target devsim_linux_2.12.0_abi3  devsim-2.12.0-cp39-abi3-manylinux_2_26_aarch64.manylinux_2_28_aarch64.whl
uv pip install numpy
chmod u+x devsim_linux_2.12.0_abi3/devsim_data/testing/rundifftest.py
bash travis_tests.sh 2.12.0_abi3
```

Trial run from a Python 3.15t environment:
```
uv venv venvt --python 3.15t
source ./venvt/bin/activate
uv pip install --target devsim_linux_2.12.0_abi3t devsim-2.12.0-cp315-abi3t-manylinux_2_26_aarch64.manylinux_2_28_aarch64.whl
uv pip install numpy
chmod u+x devsim_linux_2.12.0_abi3t/devsim_data/testing/rundifftest.py
bash travis_tests.sh 2.12.0_abi3t
```
See ``docker.sh`` to start an ubuntu environment on a Linux aarch64 or macOS machine.
