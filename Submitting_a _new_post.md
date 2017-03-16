
This document provides information on submitting a post for publication on the R Views Blog. Two submission methods are described, each having its own workflow. When using the first method, an author sends a file to me, Joseph Rickert, the blog editor. I will review the document, and suggest changes or edits. If it appears that there will be more than one exchange in the editing cycle then I will arrange some convenient way of exchanging documents and reviewing changes with the author.

In the second method of submitting a post, an author is given access to the R Views, Github based processing platform. Among other benefits, this method has the advantage of letting authors use Github for the editing and review cycle.

## Method 1: Simple Submission Process
In this simple method of submitting a post, a user sends a file containing the post by email to joseph.rickert@rstudio.com. We prefer users to send us R Markdown files, but other formats are acceptable including plain Markdown files, Microsoft Word Files and plain text files. Please attach any figures or diagrams used in the post as .png files, and any data files as .csv files. Note that you do not have to send .png files for plots that are generated by code included in your post.

If your post contains R code that is to be executed (you are sending us an R Markdown file) please include the follwing code at the beginning of your first code block:

```   
{r setup, include=FALSE}
lapply(c('package_1', 'package_2', 'package_3'), function(x) {
  if (!requireNamespace(x)) install.packages(x)
})
```   
where c('package_1', 'package_2', 'package_3') stands for a vector containing the names of all packages used in your post for it to execute.

At the current time, all authors who are not employees of RStudio must use this method of submitting a post for publication. RStudio employess have the option to use this wrokflow.

## Method 2: Collaborative Submission Process
The following workflow lists a number of tasks that must be performed in the order indicated. All tasks must be completed. Note that the tasks in some steps are locally from and RStudio project configured as a local GIt repository. Other tasks are to be done on the R Views Gitbub page.   

### Post Submission Workflow   
1. **Setup Blogdown** - From your local RStudio IDE
    i)  Install blogdown
    ii) Make a local RStudio project / repo that points to github/rstudio/rviews

2. **Prepare Github for your post** - From github/rstudio/rviews
    i)  Make a branch for the new post
    ii)  Name the branch according to the following convention: 
         date author name and "slug" e.g., 2017-01_Rickert_News

3. **Prepare your post** - From your local RStudio repo:
    i) Point your local Git repo to the new branch created in step 2.
    ii) Make a new file useing the blogdown command: `blogdown::new_post("title", rmd = TRUE)` or use the New Post Addin on the RStudio IDE
    iii) Put the post content in your file and save it locally.
    iv) Be sure to include the following code at the top of your first code block.
    ```   
{r setup, include=FALSE}
lapply(c('package_1', 'package_2', 'package_3'), function(x) {
  if (!requireNamespace(x)) install.packages(x)
})
```   
where c('package_1', 'package_2', 'package_3') stands for a vector containing the names of all packages used in your post for it to execute.
    
4. **Push your post to R Views** - From your local RStudio repo:
    
    i)  Commit your post
    ii) Push your post to the R Views Github repository

4. **Initiate the edit cycle** - From github/rstudio/rviews
    i) Add joseph-rickert as reviewer
    ii) Peform a Pull request, and assign to joseph-rickert. Note that if your Pull request generates an error, then please revise your post and recommit. It is your responsibility to make sure your code runs.
    iii) Notify JBR via email: joseph.rickert@rstudio.co
