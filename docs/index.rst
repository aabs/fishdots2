.. Fishdots2 documentation master file, created by
   sphinx-quickstart on Sun Jul 26 03:19:41 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to Fishdots2's documentation!
=====================================

.. toctree::
   :maxdepth: 2
   :caption: Contents:

   Functions

   .. function:: debug               

      Logging command (logging level 0)

   .. function:: error               

      Logging command (logging level 3)

   .. function:: info

      Logging command (logging level 1)

   .. function:: trace(message)

      Logging command (logging level -1)

   .. function:: warn(message)

      Logging command (logging level 0)

   .. function:: fd2_action(message)

      Takes one argument - message - and displays it with `[action]` prepended to it in yellow.

   .. function:: fd2_boot(message)

      Logging command for boot loading messages

      Takes one argument - message - and displays it with `[BOOT]` prepended to it in bright yellow.

   .. function:: fd2_colour_print(colour, message)  
      
      displays the message in the colour requested

   .. function:: fd2_echo(message)

      just echo if we are allowed to. Suppress echo messages by setting `$fd2_suppress_logging` to any value

   .. function:: fd2_enter(message)

      Logging command (logging level 3)
      
   .. function:: fd2_find(root_path, pattern) 

      find item by name at location in `root_path`

   .. function:: fd2_leave

      leaves current folder and emits event `fd2_left_folder`

   .. function:: fd2_log_level(level)

      sets the logging level to a numerical value.  This value is honoured by most other logging Functions

   .. function:: fd2_runifexists(path_of_file)

      check if the file exists, and sources it if possible

   .. function:: fd2_search(root_path, pattern)

      find file by full text search. Depends on ripgrep

   .. function:: fd2_select_file(root_path, pattern)

      nice file selector. Finds the file under `root_path` matching the `pattern`.  Presents the files in a `fzf` selector.  The file selected is stored in `$fd2_selected_item`.

   .. function:: fd2_select_from_find(root_path, pattern)    

      nice file selector. Finds the file under `root_path` matching the `pattern`.  Presents the files in a `fzf` selector.  The file selected is stored in `$fd2_selected_item`.

   .. function:: fd2_select_from_search  

      nice file selector. Searches for the file (by contents) under `root_path` matching the `pattern`.  Presents the files in a `fzf` selector.  The file selected is stored in `$fd2_selected_item`.

   .. function:: fd2_select_item(list_of_items)   

      nice item selector.  Presents a list of items in a `fzf` selector.  The file selected is stored in `$fd2_selected_item`.

   .. function:: fd2_to_slug(string)

      converts the string into a format compatible with URLs and file names

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
