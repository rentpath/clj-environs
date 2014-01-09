if ! [ -f /etc/yum.repos.d/epel-qt.repo ] ; then
  tee <<EOF
 'EOF' > /etc/yum.repos.d/epel-qt.repo
[epel-qt48]
name=Software Collection for Qt 4.8
baseurl=http://repos.fedorapeople.org/repos/sic/qt48/epel-$releasever/$basearch/
enabled=1
skip_if_unavailable=1
gpgcheck=0

[epel-qt48-source]
name=Software Collection for Qt 4.8 - Source
baseurl=http://repos.fedorapeople.org/repos/sic/qt48/epel-$releasever/SRPMS
enabled=0
skip_if_unavailable=1
gpgcheck=0
EOF
  yum install -y qt5-qtwebkit-devel.x86_64
  ln -nfs /usr/bin/qmake-qt5 /usr/bin/qmake
fi
