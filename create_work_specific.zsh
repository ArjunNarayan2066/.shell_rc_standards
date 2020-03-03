#!/bin/zsh

echo "Setting Up Work Specific Folders"

SPEC=~/work_specific

if [ ! -d "$SPEC" ]; then # Doesnt exist
	mkdir $SPEC
fi

MAN_SPEC=$SPEC/manifest_specific.zsh

if [ ! -f "$MAN_SPEC" ]; then
	touch $MAN_SPEC
	chmod +x $MAN_SPEC
	echo "#!/bin/zsh" >> $MAN_SPEC
       	echo "Creating Work Specific Folder at $SPEC"
	echo "Please insert work specific environment scripts in there"
	echo "# Please Put Work Specific Environment Scripts In Here\n" >> $MAN_SPEC
fi

