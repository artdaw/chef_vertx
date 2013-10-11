# Vert.x cookbook

Installs Vert.x


# Platforms

* Debian, Ubuntu, Amazon
* CentOS, Red Hat, Fedora
* ArchLinux
* FreeBSD
* OS X


# Dependencies

* ark
* java


# Attributes

See the attributes/attributes.rb for default values. 

* `node['vertx']['home']` — Home directory for Vert.x.
* `node['vertx']['flavor']` — Version of Vert.x you would like to install (1.x or 2.x). This parameter will be ignored if `node['vertx']['url']` is set.
* `node['vertx']['url']` — URL of custom Vert.x zip archive.


# Usage

Simply include the chef-vertx recipe where you would like Vert.x installed.

```

name "Vert.x App"

run_list(
  "recipe[chef-vertx]"
)
```


# License & Authors

* Author:: Gleb Galkin (artdaw@gmail.com)

```

Copyright:: 2013 Gleb Galkin

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```



