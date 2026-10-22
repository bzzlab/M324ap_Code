## Exercise 1: Cleaning and converting your Bash scripts
### Task
1. Transfer the mentioned scripts to your AWS account. 
2. Tipp: put them in your ~/bin and add .bash_profile to your home.

### Background
Due to the creation of the exercises and side effects 
when running scripts CRLF (Windows) instead of LF (Unix)
two Bash scripts has been created for overcoming potential
obstacles.

The mentioned script should be executed on all transferred 
resource to AWS BEFORE running them.

### Clean script
This script removes comments '#??'. 
Adapt the script to the target resources.

### Convert script
This script converts all CRLF (Windows) to LF (Unix).
Adapt the script to the target resources.

### Profile (optional)
The added bash_profile allows you to add these bash scripts
i.e. in your AWS home directory once and then used it for
all future activities.