#https://github.com/puginabox/no-sudo-node.git

brew install node --without-npm
mkdir "${HOME}/.npm-packages"
echo NPM_PACKAGES="${HOME}/.npm-packages" >> ${HOME}/.bashrc.d/paths
echo prefix=${HOME}/.npm-packages >> ${HOME}/.npmrc
curl -L https://www.npmjs.org/install.sh | sh
echo NODE_PATH=\"\$NPM_PACKAGES/lib/node_modules:\$NODE_PATH\" >> ${HOME}/.bashrc.d/paths
echo PATH=\"\$NPM_PACKAGES/bin:\$PATH\" >> ${HOME}/.bashrc.d/paths