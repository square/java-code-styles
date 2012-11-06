#!/bin/bash
# installs square's intellij configs into your user configs

echo "Installing IntelliJ configs..."

for i in $HOME/Library/Preferences/IntelliJIdea*/codestyles $HOME/Library/Preferences/IdeaIC*/codestyles
do
	cp -frv $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/configs/* $i
done

echo "Done."
echo ""
echo "Restart IntelliJ and go to preferences to apply them."
