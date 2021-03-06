#! /home/robi/bin/py273
# -*- coding:utf-8 -*-

# Maintainer: Kolozsi Robert <kolozsi.robert@gmail.com>
# Last Change: Jan 11, 2013.

# Description of the program {{{
"""
Introduction
============

I decided to create syntax highlighting file for Django Framework for my
favourite text editor Vim.  Some of you would probably say why in the world you
would want to have that? The answer is simple: because.  I just want to have
django specific code in different color then my code.

So the goal is to collect all the function names, constants, function argument
names, classes and assign a greenish tone to them. (But of course you can
create/use your own favourite color scheme.)

Program is not intelligent enugh to do everything alone.  It would be to much of
work and time to figure out how to do all that stuff for not so importat task.

Usage of this program precedes of doing good grep pattern command against source
files, maybe some manual polishing of the resulted file and function calls in
Vim for more polishing.
These Vim functions are also on this repository in file called `functions.vim'.
You simply call these functions on input file as described in their comments.

After that you can use this small python program to format it further and better.
I know it is a bit of mess, (grep, vim, manual edit, python..., etc.) but bear
in mind that my goal was not to create some super power app that I use in every
day work.  It was just an idea to make some simple task done which I
accomplish once and maybe a few more occasions and that's it. Maybe in the
future I'll create more compact and robust application for the same purpose
using only one application.


How this program work? (Preparation work)
====================== ==================

Program requires two arguments. An input file name and an output file name.

The input file is generated and prepared by grep command which requires a lot of
attention to produce it most precisely as possible.

Note that in my example below, grep command pattern is specific for Python syntax.
If you grep your source for a different language then you should do that
appropriately for that particular language.

In terminal, `cd' to the root directory of source in which you want to grep.
In my case (but your's definitely differs):

  $: cd ~/opt/python/lib/python2.7/site-packages/Django1.4/django/

Grep all django functions:
  $: grep -r -I --exclude-dir='js' \
          "^\s*def\s\+\w\+(" . | grep -v "\s*def\s\+_\+" ><output_func_file>

Grep all django classes:
  $: grep -r -I --exclude-dir='js' \
          "^\s*class\s\+\w\+(" . > <output_class_file>

Grep all django upper case letter words (constants):
  $: grep -r -I --exclude-dir='js' \
          '^\s*[[:upper:]]\{2,\}\(_[[:upper:]]\+\)*\s*=' . ><output_const_file>

Grep all django function arguments:
  $: grep -r -I --exclude-dir='js' \
          '\(,\s\+\w\{2,\}=\{1\}\|(\w\{2,\}=\{1\}\)' . ><output_args_file>

After this operation you end up with three <output_file> files.
I have to underline that it isn't a perfect collection because the grep pattern
may filter out some results that don't match perfectly (e.g. it matches
some key words that are only one letter long which I don't want to include in
syntax highlightning, how would that look like if each character would get
syntax highlighting), output of function arguments are pretty nasty, etc...
Thus I have to check and edit the file manualy and delete unnecessary things.

Next, open each <output_file> in text editor:

 +----------------------------------------------------------------------------
 | In normal mode type `qa' keys sequently,
 | then type these commands exactly in order they appear!:
 |   (`q' - starts to record a macro, `a' - the name of register to store in.)
 |
 |     :0vf:wwhdf(v$hdj
 |
 | Then press again `q' key (stop recording a macro).
 |
 | I am not going to explain here what these characters means. If you are a
 | Vim user chances are good that you allready understand these.
 |
 | Now you type in Normal mode: `<number_of_lines_in_file-1>@a'
 | In my case I type:
 |
 |     5140@a<enter>
 |
 | NOTE: This will take a minute or two until it finishes.
 | Then run one of space removal function in `functions.vim' file to remove each
 | trail space character/s if they exists.
 | Next do these commands for remined two files for classes and constants.
 +----------------------------------------------------------------------------

If you are lucky then everything worked fine.
Save the file and you are good to go.
Use this file as an input file.

    $: ./prepare_script.py -i <input_file> -o <output_file>

Although this process is a bit tricky but if you play with it for two hours you can
probably save your self about two days of typing keywords and avoid any mistyping
errors if you intend to create your own syntax higlighting of some language or library.

Compare two hours of frustration with two days of frustration and still have
some typing errors... I think it is worth to give it a try.


What is this script doing to the input file?
=============================================

Goal of script is to take the input file:
    1. Sort all lines by alphabet
    2. Remove duplicates
    3. Format function names in such way that they don't cross the
       80 character long line by appending `\ ' chars at the beggining
       of each line.

"""
# }}}


import sys
import getopt


def open_file(filename):
    """
    open_file: opens input file for processing.
    Returns an opened file.

    """
    f = open(filename, 'r')

    return f


def close_file(f):
    """
    close_file: only closes the input file.

    """
    f.close()


def write_file(content, filename):
    """
    write_file: writes a list to a file line by line.

    """
    f = open(filename, 'w')
    f.writelines(content)
    f.close()


def sort_lines(f):
    """
    sort_line:
        - collect file lines in the list,
        - call remove_duplicates,
        - sort funtion names in alphabethical order.
        - close file.

    """
    content = f.readlines()
    close_file(f)

    # Removing duplicated functions.
    content = remove_duplicates(content)

    # Sorting the list.
    content.sort()

    # Formating content.
    final = format_function_names(content)
    # Just print out the 'AFTER' sorting.
    #for i in content:
    #    print i

    #print "--- Finishing sorting lines ---"
    return final


def remove_duplicates(content):
    """
    remove_duplicates: removes duplicated function names.
    Returns the list of clean function names without duplicates.

    """
    #counter = 0
    #storager = {}
    new_content = []

    # Just curious how many duplicates are around for each function.
    #for line in content:
    #    if line[:-1] not in storager:
    #        storager[line[:-1]] = 1
    #        counter += 1
    #    else:
    #        storager[line[:-1]] += 1

    #del storager

    # Get ride of duplicates!
    # Accept function names only if they are longer then one character.
    for line in content:
        if line[:-1] not in new_content and len(line[:-1]) > 1:
            new_content.append(line[:-1])  # Throw away the `\n' char.

    return new_content


def format_function_names(content):
    """
    format_function_names: formats the function names in way that
    they don't cross the 80th character per line and prepend the `\' character
    at the beginning of each line for line breaking.
    Creating a list of strings that don't cross the SPACE_AVAILABLE width.

    """
    START_INDENTATION = 12 + 2
    MAX_ROW_WIDTH = 80
    SPACE_AVAILABLE = MAX_ROW_WIDTH - START_INDENTATION + 2  # '\ ' chars.
    #print "SPACE_AVAILABLE: " + str(SPACE_AVAILABLE)  # 66

    final = []
    current_position = 1
    temp_string = "\\"

    for name in content:
        current_position += len(name) + 1  # +1 is for space character
        if current_position <= SPACE_AVAILABLE:
            temp_string += " " + name
        elif current_position > SPACE_AVAILABLE:
            #final.append(temp_string + " " + str(len(temp_string)) + '\n')
            final.append(temp_string + '\n')
            temp_string = "\\ " + name
            current_position = 2 + len(name)  # 2 is for `\ ' characters.

    print "Finished formating!"

    return final


def option_error(err):
    """
    option_error: shows the error if command line options were bad.

    """
    print "Error:"
    print "See -h or --help for usage."
    print str(err)


def help():
    print "Usage:"
    print "python prepare_script -i <inputfile> -o <outputfile>"
    print "python prepare_script --input-file <inputfile> --output-file <outputfile>"
    print "For help type:"
    print "python prepare_script --help or -h"


def main():
    """
    This is the main function.
    First it parses the command line arguments.
    When this program is called it has to have two (2) arguments.
    If it doesn't have it throws an error exception and exits.

    """

    try:
        options, args = getopt.getopt(sys.argv[1:],
                                      'hi:o:', ['help',
                                                'input-file=',
                                                'output-file='])
    except getopt.GetoptError as err:
        # This is raised when an unrecognized option is found in the
        # argument list or when an option requiring an argument is given none.
        option_error(err)
        sys.exit(2)

    # And this is 'raised' ;) when there where no options given.
    if not options:
        help()
        sys.exit(2)

    for o, a in options:
        if o in ('-h', '--help'):
            help()
            sys.exit()
        elif o in ('-i', '--input-file'):
            f = open_file(a)
            final = sort_lines(f)
        elif o in ('-o', '--output-file'):
            write_file(final, a)


if __name__ == "__main__":
    main()

# vim: set tw=80:
