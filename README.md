# shell_application-

This is a shell application that allows to :
- Display the hardware characteristics of your machine via the
lshw and lscpu commands
◦ the -w option for the lshw command
◦ the -u option for the lscpu command
◦ the -h or -help option to display the help from a text file
containing the description of the application and its options (the file must be in
be in directory /etc )
◦ the -g option to display a graphical menu (example via YAD )
◦ the -m option to display a textual menu (loop menu)
◦ the -s FILE option to save the most relevant information (by filtering) in a
relevant information (by filtering) in a file passed as argument
◦ the -v option to display the verion and the names of the authors
◦ the -o FILE option to display the most relevant information
in a file passed as argument (if the file doesn't exist an
error message should be displayed)
◦ the option -f KEYWORD to display the lines containing the KEYWORD from a
from a file. This option must be used with the -o option

- Display an error message if no argument is passed to the script
- the application must be installed in the /usr/bin directory

