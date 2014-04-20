brew install python --framework --universal
brew linkapps
pip install virtualenv
mkdir -p ~/Developer/Virtualenvs

echo "Add to .bash_profile/.zshrc:"
echo
echo "# pip should only run if there is a virtualenv currently activated"
echo "export PIP_REQUIRE_VIRTUALENV=true"
echo "# cache pip-installed packages to avoid re-downloading"
echo "export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache"

echo
echo "Add to .bashrc/.zshrc:"
echo
echo "syspip(){"
echo '   PIP_REQUIRE_VIRTUALENV="" pip "$@"'
echo "}"

