
How to use Git Flow
-------------------


:Author:    @slovacus
:Date:      2017-11-29


Abstract
--------

In the following tutorial, i want to show you how you can use git flow.
I will use a example project, which shows the commands of git flow and what
it is able to do. Moreover you should get a felling for it, have fun ;)

Notation
--------

Copy all the code in green boxes into your terminal to do the tutorial.
The "$" describe input commands, the rest is the output of the terminal.

I also use some pictures in the tutorial, which show the git flow cases visual.
To understand this, you should also keep the notation for this in mind.

	- blue bubbles stands for master branch

	- yellow bubbles stands for develop branch

	- pink bubbles stands for feature branches

	- red bubbles stands for hotfix branch


What is Git Flow?
-----------------

Git flow is a command line tool, which support the programmer to use a certain
git work flow. What is meaning by "certain work flow"? In this documentation
http://nvie.com/posts/a-successful-git-branching-model/
you find all information you need. Git flow is nothing more like a way to write less and do more with git.


Install Git Flow
----------------

To intstall git flow with homebrew run ::

	$ brew install git-flow

Normally this should work, if not, you find a few other ways to install git flow in this
documentation https://github.com/nvie/gitflow/wiki/Installation.


Let's go
--------

First of all we move in our tmp directory. Afterwards we create and initialize
a throw away git repository. ::

	$ cd /tmp
	$ mkdir tutorial.gitflow
	$ cd tutorial.gitflow
	$ git init
	$ git flow init


Now git flow will ask you some questions.
It ask you which branch you want for product release ::


	 Branch name for production releases: [master]

Git flow gives you always a default name for branch, in this case "master".
Next, you are asked which branch you want for develop::


	 Branch name for "next release" development: [develop]


Git flow gives you the default "develop"
just press enter.
Next, git flow want's to know how feature branches should start ::


	How to name your supporting branch prefixes?
	Feature branches? [feature/]


You get "feature/" as default, enter this.
As next, git flow also want's to know this for release,
hotfix and support branches ::


	Release branches? [release/]
	Hotfix branches? [hotfix/]
	Support branches? [support/]


Enter this.
Hold on!
Git flow ask you if you want a version tag prefix.
So what is this? You can give a project a tag name,
so every release gets this as default name.
For e.x we take as tag "day-of-release" and give to
every release the current date as branch name, we get
automatically the tag "day-of-release-06112012".
For our project we take "release-number" ::


	Version tag prefix? [] release-number


Cool stuff! You're done ;) Let's start with our project.


Let's use Git Flow
------------------


Feature Branches
~~~~~~~~~~~~~~~~


To see how git flow works, we create a little project.
A customer want a hello world html page from us, no problem, we do this.
So first of all we create a issue on github and a feature branch for our html code.
The issue has the id #01 ::

	$ git flow feature

	No feature branches exist.
	You can start a new feature branch:
	git flow feature start <name> [<base>]

No we get the information that currently no feature branch exists

So let's create one. ::


	$ git flow feature start "html-code"

	Switched to a new branch 'feature/html-code'

	Summary of actions:
	- A new branch 'feature/html-code' was created, based on 'develop'
	- You are now on branch 'feature/html-code'

Git flow creates a new branch and switch to it.


Make sure that you are be in the feature
branch and create a index html.  ::


	$ cat > index.html

 	<html>
		<head>
		<body>
		<h1>Hello World</h1>
		</body>
	</html>

Leave with ctrl + c.

Ok, add you changes, commit your changes and finish the branch ::


	$ git add index.html
	$ git commit -m "Created the html code, closed issue #01"
	[feature/html-code 4288dbc] Created the html code
 	1 file changed, 7 insertions(+)
 	create mode 100644 index.html
	$ git flow feature finish html-code

	Switched to branch 'develop'
	Updating 134584c..4288dbc
	Fast-forward
	 index.html |    7 +++++++
	 1 file changed, 7 insertions(+)
	 create mode 100644 index.html
	Deleted branch feature/html-code (was 4288dbc).

	Summary of actions:
	- The feature branch 'feature/html-code' was merged into 'develop'
	- Feature branch 'feature/html-code' has been removed
	- You are now on branch 'develop'

Git flow merge the feature-branch into develop an close it.
If you have a look at the output of your terminal you can see
that git flow explain you what happened.
Moreover git flow add's your commits in the feature branche
to develop.

If you look at the example picture, you see visual what happend.

..  image:: /_static/develop-feature.png

So first of all we create a new developing line, which was just created for this
feature, if we're finish with our feature we close this branch line and added to
our normal developing line.

The reason why we do this, is we want to develop every feature
separate from each other. The cool thing at this way of developing
is, that we can develop at features at the same time and if something don't
work, we don't lose anything or have to make steps bag, because we're not
dependent of the rest of the current development status.



Release Branches
~~~~~~~~~~~~~~~~


Now we want to make the first release. No problem! ::



	$ git flow release
	No release branches exist.
	You can start a new release branch:
    	git flow release start <name> [<base>]



No we get the information that we have currently no releases.


Let's create one ::



	$ git flow release start 1.0
	Switched to a new branch 'release/1.0'

	Summary of actions:
	- A new branch 'release/1.0' was created, based on 'develop'
	- You are now on branch 'release/1.0'

	Follow-up actions:
	- Bump the version number now!
	- Start committing last-minute fixes in preparing your release
	- When done, run:

	     git flow release finish '1.0'



No we have created a new release. Up now we can't add anything to this release. It's fix!
The only thing we do on release branches is fixing bugs!
We do this to prepare a forthcoming release and we do definitely no developing on this kind of branch.
So what is git doing? Lets have a look on the output ::


	$ git flow release finish '1.0'
	Merge made by the 'recursive' strategy.
	 index.html |    7 +++++++
	 1 file changed, 7 insertions(+)
	 create mode 100644 index.html
	Deleted branch release/1.0 (was 4288dbc).

	Summary of actions:
	- Latest objects have been fetched from 'origin'
	- Release branch has been merged into 'master'
	- The release was tagged 'release-number1.0'
	- Release branch has been back-merged into 'develop'
	- Release branch 'release/1.0' has been deleted



If you look at the summary of actions, you can see what git do.
Git flow merge into master and develop and deleted the release branch afterwards.
Moreover git flow creates the tag name 'release-number1.0'.
Now we have our release 1.0 on master.

Visual it looks like this.

..  image:: /_static/relase.png


First we open the feature branch, and if we close it, we merge to master and bag to develop.
Everything with just one command.

Cool ;)




Hotfix Branches
~~~~~~~~~~~~~~~


Now we have a problem! The customer calls us and say that his version
of the hello world site is brick! We forgot to close the head tag and
now the site is just empty, damn!
So what now?
We have to make a hotfix!
First of all we make a issue which describe the problem, the issue has the id #02.
Make a branch on which we can solve this problem. Add and commit your changes ::

	$ git flow hotfix start "head-bug"
	Switched to a new branch 'hotfix/head-bug'

	Summary of actions:
	- A new branch 'hotfix/head-bug' was created, based on 'master'
	- You are now on branch 'hotfix/head-bug'

	Follow-up actions:
	- Bump the version number now!
	- Start committing your hot fixes
	- When done, run:

     git flow hotfix finish 'head-bug'

	$ git add index.html
	$ git commit -m "Fixed head bug, closed issue #02"
	[hotfix/head-bug db73cdc] Fixed head bug
 	1 file changed, 2 insertions(+)


Git flow creates a branch named "hotfix/head-bug" and change to this directory.
Add and commit your changes.

Afterwards finish the branch ::


	$ git flow hotfix finish head-bug
	Switched to branch 'master'
	Merge made by the 'recursive' strategy.
	 index.html |    2 ++
	 1 file changed, 2 insertions(+)
	Switched to branch 'develop'
	Merge made by the 'recursive' strategy.
	 index.html |    2 ++
	 1 file changed, 2 insertions(+)
	Deleted branch hotfix/head-bug (was db73cdc).

	Summary of actions:
	- Latest objects have been fetched from 'origin'
	- Hotfix branch has been merged into 'master'
	- The hotfix was tagged 'release-numberhead-bug'
	- Hotfix branch has been back-merged into 'develop'
	- Hotfix branch 'hotfix/head-bug' has been deleted

Git flow merged head-bug to master and develop,
and deleted head-bug afterwards.

Let's have a visual impression of what a hotfix branch is.


..  image:: /_static/master-hotfix.png


You can see that if we open the hotfix branch, we merge from master to hotfix.
We fix the problem on this branch and if we're done we finish the branch.
The result of this is, that git flow merge automatically bag to master and develop and
close the hotfix branch afterwards.


Cool Stuff!



Make a Bugfix on a Release Branch
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


OK, what we learned out of this? We should make a bugfix
before we throw the release on master next time!
But the customer is a nice guy and he is not resent.
He want to have a style feature which should show his
hello world headline red, great ;)

Let's make a new issue for this and a feature branch, the issue has the id #03 ::


	$ git flow feature start "css-code"
	Switched to a new branch 'feature/css-code'

	Summary of actions:
	- A new branch 'feature/css-code' was created, based on 'develop'
	- You are now on branch 'feature/css-code'


Add this to your index.html ::


	<style type="text/css">
		h1 {color:red;
	</style>

Now close the branch, add and commit the index.html ::

	$ git add index.html
	$ git commit -m "Created style feature, closed issue #03"
	[feature/css-code 482fa12] Created style feature
 	1 file changed, 3 insertions(+)
 	$ git flow feature finish css-code
	Switched to branch 'develop'
	Updating aa44aef..482fa12
	Fast-forward
	 index.html |    3 +++
	 1 file changed, 3 insertions(+)
	Deleted branch feature/css-code (was 482fa12).

	Summary of actions:
	- The feature branch 'feature/css-code' was merged into 'develop'
	- Feature branch 'feature/css-code' has been removed
	- You are now on branch 'develop'


Git flow merged the feature branch into develop and close the css feature branch

Now we make a new new release::

	$ git flow release start 1.5
	Switched to a new branch 'release/1.5'

	Summary of actions:
	- A new branch 'release/1.5' was created, based on 'develop'
	- You are now on branch 'release/1.5'

	Follow-up actions:
	- Bump the version number now!
	- Start committing last-minute fixes in preparing your release
	- When done, run:

     	git flow release finish '1.5'



Git flow created a new release branch and switched
to them.


This time we look very careful if we made mistakes.
And, ohhhh. Yes we did ;)
We have forgotten to close the style instruction for our headline!
Make a new issue which describes the problem, the issue has the id #05
Fix this before you can finish the release ::

	$ git add index.html
	$ git commit -m "Fixed style bug, closed issue #05"
	[release/1.5 9f4ee24] Fixed style bug
 	1 file changed, 1 insertion(+), 1 deletion(-)
	$ git flow release finish 1.5

	Switched to branch 'master'
	Merge made by the 'recursive' strategy.
	 index.html |    3 +++
	 1 file changed, 3 insertions(+)
	Switched to branch 'develop'
	Merge made by the 'recursive' strategy.
	 index.html |    2 +-
	 1 file changed, 1 insertion(+), 1 deletion(-)
	Deleted branch release/1.5 (was 9f4ee24).

	Summary of actions:
	- Latest objects have been fetched from 'origin'
	- Release branch has been merged into 'master'
	- The release was tagged 'release-number1.5'
	- Release branch has been back-merged into 'develop'
	- Release branch 'release/1.5' has been deleted


Git flow merged the feature branch to master and develop and deleted the release branch afterwards.

So let's have a visual impression what happend right now.

..  image:: /_static/bugfix.png

We made a release branch to prepare the forthcoming release (fixing bugs, make documentation, etc),
in this e.x made a bugfix on release, so we changed nothing, we just fixed mistakes we've
made. As a trough the release on master, git flow automatically merged to develop and closed the release branch.



Support Branches
~~~~~~~~~~~~~~~~

What is a support branch?
The idea of a support branch is, that you still can support older versions
of software products. This is generally for some big lazy client that don’t
want to upgrade for some obscure reason.
This branch will be created, but as far as I know it won’t ever be deleted
and will simply become a new sub-version of a current hotfix or major release.
Moreover i have to note, that this is still a very experimental feature of
Gitflow, so you should use it with caution.


Our hello world page is now in version 1.5 and we have a amount of customers.
Great ;)
But one customer from the beginning didn't want to upgrade since version 1.0. So
what should we do? We created a support branch
just for him, because we're so friendly ;)


we did it like this ::


	$ git flow support start Support_V_1.0 release-number1.0


Keep the syntax in mind ::

	git flow support start [supportName] [tagName]


Now we have a support version for 1.0 and the customer is happy ;)

For this funny kind of branch i have no visual e.x. I'am sorry ;)
But imagine like a branch line which get's opened but never closed.
So if you create a branch like this, it exists next to the main branches develop and master.


Conclution
----------


So, we're done ;)


I hope you got a impression, the understanding and
the basic skills which you need to use git flow and
this kind of work flow.At the end of these tutorial
you will find some sources about this topic.For notes,
supplements or improvements write at slovacus@gmail.com.



Sources
-------

- http://nvie.com/posts/a-successful-git-branching-model/
- https://github.com/nvie/gitflow
