source="v01"
target="master"
project="bastion"
if [ $1 ]; then source="$1"; fi
if [ $2 ]; then traget="$2"; fi
if [ $3 ]; then project="$3"; fi

gitHubRootFolderPath=".."
cd $gitHubRootFolderPath
pwd

cd $project
if [ $? -ne 0 ]; then
    echo $project folder not found
    exit 3
fi

echo Pulling code from $source
git checkout $source
if [ $? -ne 0 ]; then
    echo Unable to switch to $source
    exit 1
fi

git pull
if [ $? -ne 0 ]; then
    echo Unable to pull from $source
    exit 2
fi

echo Pulling code from $traget
git checkout $traget
if [ $? -ne 0 ]; then
    echo Unable to switch to $traget
    exit 1
fi

git pull
if [ $? -ne 0 ]; then
    echo Unable to pull from $target
    exit 2
fi

echo Merging code from $source to $target
git merge $source
