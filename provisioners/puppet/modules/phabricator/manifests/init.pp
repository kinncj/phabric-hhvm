class phabricator {

    git::repo { '/var/www/libphutil':
        source => "git://github.com/facebook/libphutil.git",
        target => "/var/www/libphutil",
    }
  
    git::repo { '/var/www/arcanist':
        source => "git://github.com/facebook/arcanist.git",
        target => "/var/www/arcanist",
    }

    git::repo { '/var/www/phabricator':
        source => "git://github.com/facebook/phabricator.git",
        target => "/var/www/phabricator",
    }
}
