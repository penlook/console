
# Show version number of Cli
version_main() {
    echo "PENLOOK CLI 1.0.0"
}

# Show usage
usage_main() {
    echo
    version_main
    echo "Usage: penlook <option>"
}

# Show command document
help_main() {
    usage_main
    echo "Options:"
    echo
    echo "  auth    Server authentication"
    echo "  path    Penlook root directory"
    echo "  clone   Initialize project"
    echo "  update  Pull all repositories"
    echo "  config  Configure project"
    echo "  build   Build all submodules"
    echo "  clean   Clean up project"
    echo "  test    Run unit and integration tests"
    echo "  deploy  Deploy directly to development server"
    echo "  server  Server instances management"
    echo "  storage Storage management"
    echo "  setup   Setup development environment"
    echo "  backup  Create backup source code and database"
    echo "  help    Support more command"
    echo "  version current version"
    echo
    echo "  For more information, see https://github.com/penlook/console"
    echo
}

# If project does not exist
# You need to clone it before using
# this option
require() {

    if [ -e "$1" ]
    then
        echo "Missing path ! Which path do you want to check ?"
        exit
    fi

    USER=`whoami`
    ROOT="/home/$USER/src/github.com"
    FOLDER="$ROOT/penlook/$1"

    if [ ! -d "$FOLDER" ]
    then
        echo "You need to clone project first !"
    fi

    echo $FOLDER
}
