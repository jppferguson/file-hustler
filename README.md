# File Hustler
A small collection of shell scripts to download files from the world wide web.

Essentially these are just a wrapper for [Wget][wget], but I often find myself needing to grab files from various places and always forget the syntax. Also adding an interactive shell makes things (arguably) easier.

Scripts mainly taken from the [wget examples page][wget-examples]

## Requirements
- [Wget][wget]

## Usage

    git clone git@github.com:jppferguson/file-hustler.git
    cd file-hustler
    ./hustle


### Sublime Text Build Command (Download Script Only)
If you're using Sublime, you can open this as a project, edit url-list.txt and use Sublime's build command `Ctrl+b`. BOOM!

## Available Scripts
- Download: Downloads a list of files from url-list.txt
- Mirror: Mirrors an entire site, by spidering it
- Single Page: Download a single page and all it's assets


[wget]: https://www.gnu.org/software/wget/

[wget-examples]: http://www.gnu.org/software/wget/manual/wget.html#Examples
