resume
======

Python resume generator.
From YAML in /resumes/  ==$ make;  ==> Static Responsive HTML Plus PDF in /build/.

Installing Resume App
---------------------
    # 1. Ensure we have git, python and python3 installed locally.
    $ git --version
    $ python --version
    $ python3 --version

    # 2. First time clone resume repo from github.
    $ cd ~; git clone https://github.com/jjdonson/resume; cd resume; git status

    # 3. Install python requirements using python3.
    $ python3 -m pip install -r requirements.txt

    # 4. Test sample yaml resume.
    $ echo "RESUME ?= resumes/hanula.yaml" > config.make ; rm -rf build/*; make

    # 5. Copy resume sample, rename, repopulate, and create new output:
    $ cp -p resumes/hanula.yaml resumes/${LOGIN}.yaml; edit resumes/${LOGIN}.yaml;
    $ echo "RESUME ?= resumes/${LOGIN}.yaml" > config.make ; rm -rf build/*; make

Usage
-----

1. Look at resume examples in the `resumes` folder and create your own.
2. Copy `config.make.example` to `config.make` and update it with your settings.
3. Run `make` to build HTML and PDF files that will go to the `build` directory.


### PDF generator

PDF is automatically generated along with html when running `make`.
To just create PDF file:

    make pdf

PDF file name in `build` directory is defined by `pdf_file` property in the `config` section of your resume `yaml` file.


### Publishing

To publish html on your server via SSH, edit `RSYNC_LOCATION` in `config.make` and run:

    make publish


Customizing
-----------
This repo contains a simple and a compact theme.

Add your own theme by creating `themes/<your-theme>` folder with `index.jinja2` template file.
Every other (non-jinja2) file from theme directory will be copied to final `build/` destination.

You can control which theme is used by setting `theme` property in the resume's `config` section.


License
-------
[MIT License](https://github.com/hanula/resume/blob/master/LICENSE)
