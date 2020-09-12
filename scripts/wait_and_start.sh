# We need to wait for the Database
sleep 3

# If demon is on run server with nodemon, otherwise jusr tun it with node
case $DEMON in
    on|On|ON)
        # Install Nodemon
        npm install -g nodemon db-migrate
        # Migrate the database up
        npm run migrate_up_all
        # Spinn up the server with nodemon
        nodemon server.js
        ;;
    *)
        npm install -g db-migrate
        npm run migrate_up_all
        node server.js
        ;;
esac
