# Repository Naming Convention #

| Object | Naming Format | Example |
|:-------|:--------------|:--------|
| Release branch | rb-<Release No.> | rb-1.0.x |
| Release | rel-<Release No.> | rel-1.0.0 |
| Bug fix branch | rb-<Release No.>-bug-<Issue ID> | rb-1.0.0-bug-1 |
| Before fix the bug | rb-<Release No.>-pre-<Issue ID> | rb-1.0.0-pre-1 |
| After fix the bug | rb-<Release No.>-post-<Issue ID> | rb-1.0.0-post-1 |
| Experimental code branch | try-<Experiment Name> | try-autolock |


# How to use #

cf. Subversion repository

http://svn.collab.net/repos/svn/README

This is the top of the Subversion repository.

> trunk/ ......... The latest development sources.  When people say
> > "Get the head of trunk", they mean the latest
> > revision of this directory tree.


> branches/ ...... Various development branches.  Typically a branch
> > contains a complete copy of trunk/, even if the
> > changes are isolated to one subdirectory.  Note
> > that branch copies are generally removed after
> > they've been merged back into trunk, so what's in
> > branches/ now does not reflect all the branches
> > that have ever been created.


> tags/ .......... Snapshots of releases.  As a general policy, we
> > don't change these after they're created; if
> > something needs to change, we move it to
> > branches and work on it there.


> developer-resources/
> > Miscellaneous things that might (or might not) be
> > of interest to developers.


> svn-logos/ ..... Results of the Subversion 1.0 Logo Contest.

> mk.xiv/ ........ Ruminations about Subversion 2.