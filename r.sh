git filter-branch --env-filter '
    oldname='(Izby02)'
    oldemail='(ibrahima.diallo02@gmail.com)'
    newname='(stefounie95)'
    newemail='(stefounie95@hotmail.fr)'
    [ "$GIT_AUTHOR_EMAIL" = "$oldemail" ] && GIT_AUTHOR_EMAIL="$newemail"
    [ "$GIT_COMMITTER_EMAIL" = "$oldemail" ] && GIT_COMMITTER_EMAIL="$newemail"
    [ "$GIT_AUTHOR_NAME" = "$oldname" ] && GIT_AUTHOR_NAME="$newname"
    [ "$GIT_COMMITTER_NAME" = "$oldname" ] && GIT_COMMITTER_NAME="$newname"
    ' HEAD 