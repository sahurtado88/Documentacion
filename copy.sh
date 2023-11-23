#!/bin/bash
#./releasemanticore.sh -r sandboxmanticore -b <branch name>
fromapp=''
toapp=''
fromrepo=''
torepo=''
tobranch=''
workflows=()
pipelines=()
services=()
provisioners=()

VALID_ARGS=$(getopt -o r:b:w:p:s:v --long release:,branch:,workflows:,pipelines:,services:,provisioners: -- "$@")
if [[ $? -ne 0 ]]; then
    exit 1;
fi


eval set -- "$VALID_ARGS"

while [ : ]; do
  case "$1" in
    -r | --release)
        echo "Processing 'release' option. Input argument is '$2'"
        torelease=$2
        shift 2
        ;;
    -b | --branch)
        echo "Processing 'branch' option. Input argument is '$2'"
        tobranch=$2
        shift 2
        ;;
    -w | --workflows)
        echo "Processing 'workflow' option. Input argument is '$2'"
        workflows=$2
        shift 2
        ;;
    -p | --pipelines)
        echo "Processing 'pipelines' option. Input argument is '$2'"
        pipelines=$2
        shift 2
        ;;
    -s | --services)
        echo "Processing 'services' option. Input argument is '$2'"
        services=$2
        shift 2
        ;;
    -v | --provisioners)
        echo "Processing 'provisioners' option. Input argument is '$2'"
        provisioners=$2
        shift 2
        ;;

    --) shift; 
        break 
        ;;
  esac
done

case $torelease in 
  dev)
    echo "----- integration to dev -----"
    fromrepo='ra-harness-dev'
    fromapp='FTDS-Manticore-Sandbox'
    torepo='ra-harness-integration'
    toapp='FTDS'
    frombranch='ftds-manticore-sandbox'
    targetbranch='master'
    ;;
  sandboxmanticore)
    echo "----- integration to manticore sandbox -----"
    fromrepo='ra-harness-integration'
    fromapp='FTDS'
    torepo='ra-harness-dev'
    toapp='FTDS-Manticore-Sandbox'
    frombranch='master'
    targetbranch='ftds-manticore-sandbox'
    ;;
  toprodfrom)
    echo "----- integration to manticore sandbox -----"
    fromrepo='ra-harness-integration'
    fromapp='FTDS'
    torepo='ra-harness-dev'
    toapp='FTDS-Manticore-Sandbox'
    frombranch='master'
    targetbranch='ftds-manticore-sandbox'
    ;;
  topreprodfromintegration)
    echo "----- integration to manticore sandbox -----"
    fromrepo='ra-harness-integration'
    fromapp='FTDS'
    torepo='ra-harness-dev'
    toapp='FTDS-Manticore-Sandbox'
    frombranch='master'
    targetbranch='ftds-manticore-sandbox'
    ;;
esac

echo " -- copy harness -- "
echo "From Repo $fromrepo of App $fromapp on Branch $frombranch"
echo "To Repo $torepo of App $toapp on Branch $tobranch"
echo $provisioners
echo $workflows
echo $pipelines
echo $services

now=`date +"%Y-%m-%d-%H-%M-%S"`
workdir="/tmp/ra-harness-util-workdir/$now"
echo "work in $workdir"

mkdir -p $workdir
cd $workdir
git clone "git@ragitlabegl1.ra.rockwell.com:swc/Raider/cloudops/$fromrepo.git"
git clone "git@ragitlabegl1.ra.rockwell.com:swc/Raider/cloudops/$torepo.git"

if [ -n $provisioners ]

then
    IFS=',' read -r -a prov <<< "$provisioners"
    for ip in "${prov[@]}"
    do
        echo "$fromrepo/Setup/Applications/$fromapp/Provisioners/$ip.yaml"
    done
else
    echo "\$provisioners is empty"
fi

if [ -n $workflows ]

then
    IFS=',' read -r -a work <<< "$workflows"
    for ip in "${work[@]}"
    do
        echo "$fromrepo/Setup/Applications/$fromapp/Workflows/$ip.yaml"
        cp -rv $fromrepo/Setup/Applications/$fromapp/Workflows/$ip.yaml $torepo/Setup/Applications/$toapp/$ip.yaml
    done
else
    echo "\$workflows is empty"
fi

if [ -n $pipelines ]

then
    IFS=',' read -r -a pipe <<< "$pipelines"
    for ip in "${pipe[@]}"
    do
        echo "$fromrepo/Setup/Applications/$fromapp/Pipelines/$ip.yaml"
    done
else
    echo "\$pipelines is empty"
fi

if [ -n $services ]

then
    IFS=',' read -r -a ser <<< "$services"
    for ip in "${ser[@]}"
    do
        echo "$fromrepo/Setup/Applications/$fromapp/Services/$ip.yaml"
    done
else
    echo "\$workflows is empty"
fi


: << COMMENT

now=`date +"%Y-%m-%d-%H-%M-%S"`
workdir="/tmp/ra-harness-util-workdir/$now"
echo "work in $workdir"

mkdir -p $workdir
cd $workdir
git clone "git@ragitlabegl1.ra.rockwell.com:swc/Raider/cloudops/$fromrepo.git"
git clone "git@ragitlabegl1.ra.rockwell.com:swc/Raider/cloudops/$torepo.git"

#make a merge branch
cd $workdir/$torepo
git checkout $targetbranch
git branch $tobranch
git push origin $tobranch 
git checkout $tobranch

rm -rf Setup/Applications/$toapp/Provisioners
rm -rf Setup/Applications/$toapp/Services
rm -rf Setup/Applications/$toapp/Workflows
rm -rf Setup/Applications/$toapp/Pipelines

#copy yaml files
cd $workdir
cp -R $fromrepo/Setup/Applications/$fromapp/Provisioners $torepo/Setup/Applications/$toapp
cp -R $fromrepo/Setup/Applications/$fromapp/Services $torepo/Setup/Applications/$toapp
cp -R $fromrepo/Setup/Applications/$fromapp/Workflows $torepo/Setup/Applications/$toapp
cp -R $fromrepo/Setup/Applications/$fromapp/Pipelines $torepo/Setup/Applications/$toapp


cd $workdir/$torepo
#git add .
#git commit -m "Merge to $toapp on branch $tobranch from $fromrepo"
#git push  --set-upstream origin $tobranch -o merge_request.create -o merge_request.target=$targetbranch

COMMENT