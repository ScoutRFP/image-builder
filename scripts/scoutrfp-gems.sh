#!/bin/bash

    (cat <<'EOF'
rvm use 2.1.8@global --default && \
gem uninstall bundler &&  \
gem install bundler -v '1.12.5' && \
rvm use 2.1.8@scout --default && \
bundler --version
EOF
) | sudo -H -i -u ubuntu
