#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/george/Desktop/group16_workspace/src/ROSPlan/rosplan_rqt"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/george/Desktop/group16_workspace/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/george/Desktop/group16_workspace/install/lib/python2.7/dist-packages:/home/george/Desktop/group16_workspace/build/rosplan_rqt/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/george/Desktop/group16_workspace/build/rosplan_rqt" \
    "/usr/bin/python2" \
    "/home/george/Desktop/group16_workspace/src/ROSPlan/rosplan_rqt/setup.py" \
     \
    build --build-base "/home/george/Desktop/group16_workspace/build/rosplan_rqt" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/george/Desktop/group16_workspace/install" --install-scripts="/home/george/Desktop/group16_workspace/install/bin"
