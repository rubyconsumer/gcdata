# gcdata

Provide easy access to Geocaching.com pocket query data.

gcdata provides two things:

 * easy access to Geocaching.com Pocket Query data.
 * statistics on the Pocket Query. (TODO: Might be a seperate project)
 * Ability to access and gather statistics on one or more Pocket Queries (FUTURE)

# Install the gem

    gem install gcdata

# Usage

You can use script/console to interact with the gem.

 * Read in the pocket query file.

        @pq_contents = File.read('676364617461.gpx')

 * Create a PQ with the pocket query contents.

        @pq = GCData::PQ.new(@pq_contents) 

 * You now have access to all the information in your pocket query.

        >> @pq.wpts[0].cache.logs[0].finder
        => "gcdata"


# Note on Patches/Pull Requests
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

# Copyright

Copyright (c) 2010 Winston Tsang. See LICENSE for details.

