## skip installation if /opt/autoenv already exists
[ -d /opt/autoenv ] && return

git clone git://github.com/kennethreitz/autoenv.git /opt/autoenv
