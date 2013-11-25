# foreman\_host\_extender

A small plugin to extend [foreman_column_view](https://github.com/GregSutcliffe/foreman_column_view) by adding the ability to add items to the Host Edit page. By default the gem adds rack managment to Foreman but by altering the included migration you could easily add any desired columns.

# Installation

First we need to install `foreman_column_view` and get it working. Now we need to build this gem, since its not available online. First download the git repo.

```yaml
cd ~
git clone https://github.com/rbirnie/foreman_host_extender.git
cd foreman_host_extender
```

Now you can customize what you want to add to the database. Look at this tutorial for help [Active Record Migrations](http://guides.rubyonrails.org/migrations.html).

```yaml
vi db/migrate/20131121150500_add_rack_to_hosts.rb
```

We are now ready to build our gem. Run `scl enable ruby193 bash` to jump into Foreman's ruby environment.

```yaml
scl enable ruby193 bash
cd foreman_host_extender
gem build foreman_host_extender.gemspec
gem install --ignore-dependencies foreman_host_extender-0.2.1.gem
```

Next require this gem in Foreman's `bundler.d/Gemfile.local.rb` file (create it if it doesn't exist).

```yaml
gem 'foreman_host_extender'
```

Finally, run our migrations.

```
cd /usr/share/foreman
BUNDLE_GEMFILE=/usr/share/foreman/Gemfile.in bundle install
rake RAILS_ENV=production db:migrate
touch ~foreman/tmp/restart.txt
```

# Configuration

This plugin uses the exact same yaml settings file as foreman_column_view but adds a new `:view:` switch called `:hosts_edit` to select Host Edit pages. The function of the `:after:` section has also been altered slightly to drop the new column into the requested settings page. To add the columns for rack management add the following to your foreman_column_view settings file:

```yaml
  :rack_view:
    :title: Rack
    :after: nt_drac
    :content: rack
    :view: :hosts_properties
  :racku_edit:
    :title: "racku"
    :after: rack_view
    :content: racku
    :view: :hosts_properties
  :rack_edit:
    :title: rack
    :after: info
    :content: rack
    :view: :hosts_edit
  :racku_edit:
    :title: "racku"
    :after: info
    :content: racku
    :view: :hosts_edit
```

# TODO

* Create generator for easily adding migrations.

# Copyright

Copyright (c) 2013 Robert Birnie

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
