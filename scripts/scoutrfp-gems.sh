#!/bin/bash

    (cat <<'EOF'
rvm use 2.1.10@global --default && \
gem uninstall bundler &&  \
gem install bundler -v '1.13.6' && \
rvm use 2.1.10@scout --default && \
gem update --system 2.6.10 && \
bundler --version
EOF
) | sudo -H -i -u ubuntu
