01. List the hidden files in a directory.

ls -a
(or, ls -d .* for just the dotfiles)

02. List the files in the parent directory. Then list the files in the parent directory's parent directory.

ls ../
ls ../..

03. What's the difference between abc/ and /abc?

abc/ is a directory within (or, relative to) your current directory.
/abc is a directory in your root directory.

04. What does ../abc mean?

../abc is a directory (or file) in the parent directory of your current directory.

05. Suppose you are in a directory with 7 files. You need to move 6 of them into a "temp" directory, that you have yet to create. How do you do that?

mkdir ~/temp
mv ./* ~/temp
mv ~/temp/file7.txt ./

06. Suppose you have two directories called xyz/ and abc/. How do you move all the files in abc/ that end with ".txt" into xyz/?

mv ~/abc/*.txt ~/xyz/
