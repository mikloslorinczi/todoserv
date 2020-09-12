# We need to wait for the Database
sleep 3

function run_demon {
    # Install Nodemon
    npm install -g nodemon

    # Spinn up the server
    nodemon server.js
}

# If demon is on run server with nodemon, otherwise jusr tun it with node
case $DEMON in
    on|On|ON) run_demon;;
    *)        npm start;;
esac
