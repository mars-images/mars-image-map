# Mars map with photos taken by rovers. 

This project idea is to create a 2D map of the red planet and put on this map dots which will represent a photo taken by one of the NASA's Curiosity, Opportunity, Spirit and Perseverance rovers on Mars.

## Photo

Each rover has its own set of photos stored in the database, to achieve the goal, we will use Mars Rover Photo API which is maintained by [Chris Cerami.] (https://github.com/chrisccerami/mars-photo-api)

## Contributing

If you would like to contribute to this project, feel free to create a pull request. Also, you can contact me at vladyslav.kolomiets@protonmail.com


## get started
clone the repo
```
git clone git@github.com:mars-images/mars-image-map.git

cd mars-image-map
```

configure local environment variables
```
cp .env-example .env
```

get it going
```
make run

// this is a shortcut for
// docker-compose up --build
```

take a look at the Makefile for all the shortcuts
