# ** Aprendiendo GIT

## MAIN
Introducción a los comandos básicos de git para trabajar de manera local.

1. Sequencia de Introducción
    1.1  Introducción a Git    
        git commit;

        git commit;
    1.2 Branching en Git
        
        git branch bugFix;
        git checkout bugFix;

    1.3 Mergin en Git
        git checkout -b bugFix;

        git commit;

        git checkout master;

        git commit;

        git merge bugFix;

    1.4 Introducción a Rebase
        git checkout -b bugFix;

        git commit;

        git checkout master;

        git commit;

        git checkout bugFix;

        git rebase master;

2. Acelerando
    2.1  Detach yo’ HEAD

        git checkout C4;
    2.2 Relative refs (^)

        git branch -f master C6;

        git branch -f bugFix C0;

        git checkout C1;

    2.3  Revertir cambios en Git
        git reset local~1;

        git checkout pushed;

        git revert pushed;

3. Moviendonos entre trabajo   
    3.1  Introducción a Cherry-pick

       git cherry-pick C3 C4 C7;

    3.2 Introducción interactiva a rebase

        git rebase -i master~4 --aboveAll;

4. A mixed bag
    4.1  Grabbing just 1 commit    
       
        git checkout master;
       
        git cherry-pick C4;
    4.2 Juggling commits
        
        git rebase -i caption~2 --aboveAll;
        
        git commit --amend;
        
        git rebase -i caption~2 --aboveAll;
        
        git branch -f master caption;

    4.3 Juggling commits #2
        
        git checkout master;
        
        git cherry-pick C2;
        
        git commit --amend;
        
        git cherry-pick C3;   

    4.5 Git tags
       
        git tag v0 C1;
       
        git tag v1 C2;
       
        git checkout C2;

    4.6 Git describe
       
        git commit;

5. Topicos avanzados
    5.1 Rebasing over 9000 times   
        
        git rebase master bugFix;
        
        git rebase bugFix side;
        
        git rebase side another;
        
        git rebase another master;

    5.2 Multiple parents
       
        git branch bugWork master~^2~;

    5.6 Branch Spaghetti
        
        git checkout one;
        
        git cherry-pick C4 C3 C2;
        
        git checkout two;
        
        git cherry-pick C5 C4 C3 C2;
        
        git branch -f three C2;

## REMOTE
Aprendiendo commandos Git para trabajar en remoto

1. Push and Pull
    1.1 Introducción a Clone

        git clone;
    1.2 Branchs remotas

        git commit;
        git checkout o/master;
        git commit;
    1.3 Git fetching

        git fetch;
    1.4 Git pulling

        git pull;
    1.5 Faking Teamwork

        git clone;
        git fakeTeamwork master 2;
        git commit;
        git pull;
    1.6 Git pushing

        git clone;
        git commit;
        git commit;
        git push;
    1.7 Diverged History

        git clone;
        git fakeTeamwork;
        git commit;
        git pull --rebase;
        git push;  
    1.8 Locked master

        git branch feature;
        git checkout feature;
        git push;
        git branch -f master HEAD~1

2. Git remoto avanzado
    2.1 Push master

        git fetch;
        git rebase o/master side1;
        git rebase side1 side2;
        git rebase side2 side3;
        git rebase side3 master;
        git push;
    2.2  Merging with remotes

        git checkout master;
        git pull;
        git merge side1;
        git merge side2;
        git merge side3;
        git push;
    2.3 Remote Tracking

        git checkout -b side o/master;
        git commit;
        git pull --rebase;
        git push;
    2.4 Git push arguments

        git push origin master;
        git push origin foo;
    2.5 Git push arguments — Expanded!

        git push origin master~1:foo;
        git push origin foo:master;
    2.6 Fetch arguments

        git fetch origin master~1:foo;
        git fetch origin foo:master;
        git checkout foo;
        git merge master;
    2.7 Source of nothing

        git push origin :foo;
        git fetch origin :bar;
    2.8 Pull arguments

        git pull origin bar:foo;
        git pull origin master:side;

## ANEXOS
              