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
    - Detach yo’ HEAD
        git checkout C4;
    - Relative refs (^)
        git branch -f master C6;
        git branch -f bugFix C0;
        git checkout C1;
    - Revertir cambios en Git
        git reset local~1;
        git checkout pushed;
        git revert pushed;   
3. Moviendonos entre trabajo   
    -  Introducción a Cherry-pick
       git cherry-pick C3 C4 C7;
    - Introducción interactiva a rebase
        git rebase -i master~4 --aboveAll;
4. A mixed bag
    - Grabbing just 1 commit    
        git checkout master;
        git cherry-pick C4;
    - Juggling commits
        git rebase -i caption~2 --aboveAll;
        git commit --amend;
        git rebase -i caption~2 --aboveAll;
        git branch -f master caption;
    - Juggling commits #2
        git checkout master;
        git cherry-pick C2;
        git commit --amend;
        git cherry-pick C3;     
    - Git tags
        git tag v0 C1;
        git tag v1 C2;
        git checkout C2;
    - Git describe
        git commit;
5. Topicos avanzados
    - Rebasing over 9000 times   
        git rebase master bugFix;
        git rebase bugFix side;
        git rebase side another;
        git rebase another master;
    - Multiple parents
        git branch bugWork master~^2~;
    - Branch Spaghetti
        git checkout one;
        git cherry-pick C4 C3 C2;
        git checkout two;
        git cherry-pick C5 C4 C3 C2;
        git branch -f three C2;

## REMOTE
Aprendiendo commandos Git para trabajar en remoto
1. Push and Pull
    - Introducción a Clone
        git clone;
    - Branchs remotas
        git commit;
        git checkout o/master;
        git commit;
    - Git fetching
        git fetch;
    - Git pulling
        git pull;
    - Faking Teamwork
        git clone;
        git fakeTeamwork master 2;
        git commit;
        git pull;
    - Git pushing
        git clone;
        git commit;
        git commit;
        git push;
    - Diverged History
        git clone;
        git fakeTeamwork;
        git commit;
        git pull --rebase;
        git push;  
    - Locked master
        git branch feature;
        git checkout feature;
        git push;
        git branch -f master HEAD~1
2. Git remoto avanzado
    - Push master
        git fetch;
        git rebase o/master side1;
        git rebase side1 side2;
        git rebase side2 side3;
        git rebase side3 master;
        git push;
    -  Merging with remotes
        git checkout master;
        git pull;
        git merge side1;
        git merge side2;
        git merge side3;
        git push;
    - Remote Tracking
        git checkout -b side o/master;
        git commit;
        git pull --rebase;
        git push;
    - Git push arguments
        git push origin master;
        git push origin foo;
    - Git push arguments — Expanded!
        git push origin master~1:foo;
        git push origin foo:master;
    - Fetch arguments
        git fetch origin master~1:foo;
        git fetch origin foo:master;
        git checkout foo;
        git merge master;
    - Source of nothing
        git push origin :foo;
        git fetch origin :bar;
    - Pull arguments
        git pull origin bar:foo;
        git pull origin master:side;

                    