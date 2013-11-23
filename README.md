# foreman\_host\_extender

A small plugin to extend [foreman_column_view](https://github.com/GregSutcliffe/foreman_column_view) by adding the ability to add items to the Host Edit page. By default the gem adds rack managment to Foreman but by altering the included migration you could easily add any desired columns.

# Installation

Require the both this gem and foreman_column_view in Foreman

```yaml
gem 'foreman_host_extender', :git => 'git://github.com/rbirnie/foreman_host_extender'
gem 'foreman_column_view'
```

Update Foreman with the new gems:

    bundle update foreman_column_view
    bundle update foreman_host_extender

From here you will either want to run the edit and run the included rake file.

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

* Create generator for easily creating migrations.

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
