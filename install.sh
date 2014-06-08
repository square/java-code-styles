#!/bin/bash
# Installs Square's IntelliJ configs into your user configs.

echo "Installing Square code style configs..."

if [ "$(uname)" == "Darwin" ]; then
  # Mac OS X platform
  for i in $HOME/Library/Preferences/IntelliJIdea*/codestyles \
           $HOME/Library/Preferences/IdeaIC*/codestyles \
           $HOME/Library/Preferences/AndroidStudio*/codestyles
  do
    cp -frv $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/configs/* $i 2> /dev/null
  done
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Linux platform
   for i in $HOME/.IntelliJIdea*/config/codestyles \
            $HOME/.IdeaIC*/config/codestyles \
            $HOME/.AndroidStudio*/config/codestyles
  do
    cp -frv $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/configs/* $i 2> /dev/null
  done
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    # Windows NT platform
    echo "This doesn't support windows."
    echo "But you can apply patch."
fi

echo "Done."
echo ""
echo "Restart IntelliJ and/or AndroidStudio, go to preferences, and apply 'Square' or 'SquareAndroid'."
