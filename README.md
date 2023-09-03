# F1 Ergast Services
Module for consume data from Ergast F1 API.

## Installation

Add this line to your application's Gemfile:

    gem "f1_ergast", git: "https://github.com/ebcardoso/f1_ergast_gem.git"

And then execute:

    $ bundle install

## Usage

### Drivers

```ruby
F1Ergast::Drivers.list_all(offset = 0, limit = 10)                       # List of all drivers
F1Ergast::Drivers.by_year(year, offset = 0, limit = 10)                  # List of all drivers within a year
F1Ergast::Drivers.by_year_in_round(year, round, offset = 0, limit = 10)  # List of all drivers within a race in a year
F1Ergast::Drivers.describe(driver_id)                                    # Informations of a driver
```

### Constructors

```ruby
F1Ergast::Constructors.list_all(offset = 0, limit = 10)                       # List of all constructors
F1Ergast::Constructors.by_year(year, offset = 0, limit = 10)                  # List of all constructors within a year
F1Ergast::Constructors.by_year_in_round(year, round, offset = 0, limit = 10)  # List of all constructors within a race in a year
F1Ergast::Constructors.describe(constructor_id)                               # Informations of a constructor
```

### Circuits

```ruby
F1Ergast::Circuits.list_all(offset = 0, limit = 10)                       # List of all circuits
F1Ergast::Circuits.by_year(year, offset = 0, limit = 10)                  # List of all circuits within a year
F1Ergast::Circuits.by_year_in_round(year, round, offset = 0, limit = 10)  # List of all circuits within a race in a year
F1Ergast::Circuits.describe(circuitId)                                    # Informations of a circuits
```

### Seasons

```ruby
F1Ergast::Seasons.list_all(offset = 0, limit = 10)  # List of all seasons
```

### Results

```ruby
F1Ergast::Results.race_result(year, round, offset = 0, limit = 10)  # Results from a race
F1Ergast::Results.most_recent(offset = 0, limit = 10)               # Results from most recent race
```

### Qualifying

```ruby
F1Ergast::Qualifying.by_year_in_round(year, round, offset = 0, limit = 10)  # Qualifying results
```

### Schedules

```ruby
F1Ergast::Schedules.by_year(year, offset = 0, limit = 10)         # Schedule of races for a season
F1Ergast::Schedules.by_race(year, round, offset = 0, limit = 10)  # Info about a specific race
F1Ergast::Schedules.current_season(offset = 0, limit = 10)        # Schedule of the current season
```

### Standings

```ruby
F1Ergast::Schedules.drivers_after_race(year, round, offset = 0, limit = 10)         # Driver standings after a race
F1Ergast::Schedules.constructors_after_race(year, round, offset = 0, limit = 10)    # Constructor standings after a race
F1Ergast::Schedules.drivers_in_season(year, offset = 0, limit = 10)                 # Season and driver standings 
F1Ergast::Schedules.constructors_in_season(year, offset = 0, limit = 10)            # Season and constructor standing
F1Ergast::Schedules.drivers_current(offset = 0, limit = 10)                         # Current drivers' standing
F1Ergast::Schedules.constructors_current(offset = 0, limit = 10)                    # Current constructor's standing
F1Ergast::Schedules.history_by_driver(driver_id, offset = 0, limit = 10)            # All winners of drivers' championships
F1Ergast::Schedules.history_by_constructor(constructor_id, offset = 0, limit = 10)  # All winners of constructors' championships
F1Ergast::Schedules.winners_by_drivers(offset = 0, limit = 10)                      # Driver standings by specifying the driver
F1Ergast::Schedules.winners_by_constructors(offset = 0, limit = 10)                 # Constructor standings by specifying the constructor
```

### Finishing Status

```ruby
F1Ergast::FinishingStatus.list_all(offset = 0, limit = 10)                       # List of all status
F1Ergast::FinishingStatus.by_year(year, offset = 0, limit = 10)                  # List of all status within a year
F1Ergast::FinishingStatus.by_year_in_round(year, round, offset = 0, limit = 10)  # List of all status within a race in a year
```

### Lap Times

```ruby
F1Ergast::Laps.lap_infos(year, round, lap_number, offset = 0, limit = 10)  # Lap Times
```

### Pit Stops

```ruby
F1Ergast::Pitstops.by_year_in_round(year, round, offset = 0, limit = 10)                  # Pit stop data for a race 
F1Ergast::Pitstops.specific_pitstop(year, round, pitstop_number, offset = 0, limit = 10)  # Information for a specific pit stop
```
