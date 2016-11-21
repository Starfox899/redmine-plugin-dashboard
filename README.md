# redmine-plugin-redhopper

This is a docker container designed to install [redmine-dashboard](https://www.redmine.org/plugins/redmine-dashboard) as a plugin on an existing [sameersbn/redmine](https://github.com/sameersbn/docker-redmine) stack.

# Prerequisits

Please ensure to have an redmine-stack up and running. For the moment this container is deigned to write to `/home/redmine/data/plugins` directory, therefore we suggest using sameersbn/redmine stack.

Setup sameersbn/redmine stack once:

```
git clone https://github.com/sameersbn/docker-redmine.git
cd docker-redmine
docker-compose up
```

# Installing the plugin

Once your redmine stack was up at least once, you can link to its volumes. This is necessary to write to the plugins directory.

To install redmine-dashboard plugin do:

```
docker run --rm --volumes-from dockerredmine_redmine_1 starfox/redmine-plugin-dashboard
```

Now the plugin has been installed in the data directory, but is not yet integrated into redmine. To do so, you should recreate the sameersbn redmine-stack:

```
cd docker-redmine
docker-compose stop
docker-compose up
```
sameersbn did a brilliant job to conserve data using docker's data volumes, so there should be no worries about your data. But hey, anyway do a backup before to be safe.

Now the plugin is available in redmine, and can be activated in the project settings.

