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

echo_and_run cd "/home/user/lab_ws/src/fetch/fetch_ros/fetch_calibration"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/user/lab_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/user/lab_ws/install/lib/python2.7/dist-packages:/home/user/lab_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/user/lab_ws/build" \
    "/usr/bin/python2" \
    "/home/user/lab_ws/src/fetch/fetch_ros/fetch_calibration/setup.py" \
     \
    build --build-base "/home/user/lab_ws/build/fetch/fetch_ros/fetch_calibration" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/user/lab_ws/install" --install-scripts="/home/user/lab_ws/install/bin"
