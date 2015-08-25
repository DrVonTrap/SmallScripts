sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-3.6 60 
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.6 60
sudo update-alternatives --install /usr/bin/lldb lldb /usr/bin/lldb-3.6 60
sudo update-alternatives --config clang
sudo update-alternatives --config lldb
