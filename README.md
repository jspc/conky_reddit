Conky Reddit
==

conky-reddit scrapes the reddit API to, essentially, build the front page with conky colours.

It is driven by an ini file which lives at `~/.config/reddit/reddit.ini` and looks like:

```ini
[app]
id = APP_ID
secret = APP_SECRET

[user]
username = foo
password = bar
```

The App ID and App Secret can be found by creating an App account via the [app preferences](https://ssl.reddit.com/prefs/apps/) page.

The username and password are your username and password.

Conky Usage
--

There is a sample conky config at `conky/reddit.conf` which shows the simplest way to use the tool:

```conky
${execpi 300 /path/to/conky_reddit/go.rb}
```

(The example points to the location on my machine since that config is the actual config I use on my real-life computer)
