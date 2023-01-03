#!/usr/bin/env python
import os, re, subprocess, hashlib, sys
from pathlib import Path
import urllib.request as ur
import json

# If the --noninteractive flag is set, the script will not prompt for user input
noninteractive = "--noninteractive" in sys.argv
# If the --noninteractive flag is set, the script pushes the resulting formula to the repo iff the --push flag is also set
noninteractive_push = "--push" in sys.argv

pattrick_cmd="pattrick"
latest_version_url="https://crates.io/api/v1/crates/pattrick"
version_to_release_urls = lambda version: {
    "macos_intel": f"https://github.com/jvanbuel/pattrick/releases/download/v{version}/pattrick-x86_64-apple-darwin.tar.gz",
    "macos_arm": f"https://github.com/jvanbuel/pattrick/releases/download/v{version}/pattrick-aarch64-apple-darwin.tar.gz",
    "linux_intel": f"https://github.com/jvanbuel/pattrick/releases/download/v{version}/pattrick-x86_64-unknown-linux-gnu.tar.gz",
}
formula_path, template_path = (Path(os.path.realpath(__file__)).parent.joinpath("Formula", path) for path in ("pattrick.rb", "pattrick.template"))
released_version=re.search("version\s+\"([\d\.]+)", formula_path.read_text())[1]
latest_version=json.loads(ur.urlopen(latest_version_url).read())['crate']['newest_version']

print(f"Released version: {released_version}")
print(f"Latest version: {latest_version}")


release_urls = version_to_release_urls(latest_version)
print(f"Downloading releases from {release_urls}")
shas = {platform: hashlib.sha256(ur.urlopen(url).read()).hexdigest() for platform, url in release_urls.items()}
print(f"Release hashes: {shas}")

if not noninteractive:
    if input("upgrade formula definition? y/N   ") != "y":
        print("Exiting")
        exit()

with open(template_path, 'r') as template:
  new_formula = template.read().replace('<version>', latest_version)
  for platform in release_urls.keys():
    new_formula = new_formula.replace(f'<{platform}_sha256>', shas[platform])
  formula_path.write_text(new_formula)
print("Updated forumula")

if not noninteractive_push:
    if noninteractive or input("commit to repo and push? y/N   ") != "y":
        print("Exiting")
        exit()

print("Committing new version to repo and pushing")
subprocess.run(f"git add . && git commit -m 'upgrade to v{latest_version}' && git push", shell=True)
