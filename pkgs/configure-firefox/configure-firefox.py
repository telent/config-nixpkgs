#!/usr/bin/env python3

prefs = """
pref("toolkit.policies.perUserDir", true);
pref("ui.key.accelKey", 18);\n', # use Alt instead of Ctrl
"""

policies = {
    "policies": {
        "BlockAboutConfig": False,
        "Extensions": {
            "Install": [
                "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin",
                "https://addons.mozilla.org/firefox/downloads/file/3511233/temporary_containers-1.8-fx.xpi?src=search",
                "https://addons.mozilla.org/firefox/downloads/file/3548609/firefox_multi_account_containers-6.2.5-fx.xpi?src=search",
            ]

        }
    }
}

####################################


import configparser
import os
import json
import pathlib

base = os.environ['HOME']+"/.mozilla/firefox"

config = configparser.ConfigParser()
config.read(base+"/profiles.ini")
for section in config.sections():
    if 'Default' in config[section] and config[section]['Default']=='1':
        profile_path = base + "/" + config[section]['Path']

prefs_f = open(profile_path + "/user.js", "w")
prefs_f.write(prefs)
prefs_f.close()

firefox_run = pathlib.Path(os.environ['XDG_RUNTIME_DIR']+"/firefox")
firefox_run.mkdir(parents=True, exist_ok=True)
policies_f = open(firefox_run.joinpath("policies.json"), "w")
policies_f.write(json.dumps(policies))
