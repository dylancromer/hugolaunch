# hugolaunch
Tools for quickly launching a Hugo site on Github pages

## Usage
Before using `startup.sh` or `startup_username-github-io.sh`, make sure you have
 - a Github repository named \<yourusername\>.github.io AND one named \<yourusername\>.github.io-dev, OR
 - a Github repository named \<yourproject\> AND one named \<yourproject\>-dev
 - ensure that the one without the -dev suffix is NOT empty. A good way to do this is to initialize the repo with a ReadMe

Once you have done this, you can edit the `startup.sh` or `startup_username-github-io.sh` (pick according to how you named your repositories) with your GitHub username and (for `startup.sh`) your project/site name.

Then, from _inside the launchhugo directory_, you can run the scripts.

There are commented out lines for automatically adding a theme to your Hugo site, all you need to do is to add the GitHub username and theme repository name to the appropriate variables in the scripts.


## Contributing
Please report any bugs here, and if you want to contribute feel free to submit PRs.
