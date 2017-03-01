01. Create a directory in your home directory called "cli-tmp".

mkdir ~/cli-tmp

02. From the home directory, create a file in the cli-tmp directory called "from-home.txt".

cd 
touch cli-tmp/from-home.txt

03. Navigate to the cli-tmp directory, then create a file called "in-cli-tmp".

cd cli-tmp
touch in-cli-tmp

04. Try to make a directory called "in-cli-tmp" within the cli-tmp directory. What happens?

mkdir in-cli-tmp
"mkdir: in-cli-tmp: File exists"

05. Remove the from-home.txt file

rm from-home.txt

06. Remove the cli-tmp directory (hint use man to see how to remove a directory recursively).

cd
rm -r cli-tmp

07. Create a nested set of directories in your home directory: cli-tmp > parents > children > grandchildren (hint: use the -p flag to do it all at once).

mkdir -p ~/cli-tmp/parents/children/grandchildren

08. Navigate to the children directory.

cd ~/cli-tmp/parents/children

09. Create a file named "bob".

touch bob

10. Move the file named "bob" to the grandchildren directory.

mv bob grandchildren

11. Copy the grandchildren directory to the parents directory, and rename it "nephews".

cp -r grandchildren ../nephews

12. Copy the contents of the "nephews" directory to the "children" directory.

cp -r ../newphews/* ./

13. View what you've done with the tree command: $ tree ~/cli-tmp.

/Users/andyprickett/cli-tmp/
└── parents
    ├── children
    │   ├── bob
    │   └── grandchildren
    │       └── bob
    └── nephews
        └── bob

14. Remove the "bob" file from the grandchildren directory.

rm ~/cli-tmp/parents/children/grandchildren/bob

15. Remove the cli-tmp directory.

cd
rm -r cli-tmp
