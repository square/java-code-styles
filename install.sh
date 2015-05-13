#!/bin/bash
# Installs Prolific's IntelliJ configs into your user configs.

echo "Installing Prolific code style configs..."

for i in $HOME/Library/Preferences/IntelliJIdea* \
         $HOME/Library/Preferences/IdeaIC* \
         $HOME/Library/Preferences/AndroidStudio* 

do
  # Create codestyles directory if it does not exist (AndroidStudio1.2 for example)
  if [ ! -d "$i/codestyles" ]; then
    mkdir $i/codestyles
  fi

  cp -frv $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/configs/* $i/codestyles 2> /dev/null
done

echo "Done."
echo ""
echo "Restart AndroidStudio, go to preferences, and apply 'ProlificAndroid'."
