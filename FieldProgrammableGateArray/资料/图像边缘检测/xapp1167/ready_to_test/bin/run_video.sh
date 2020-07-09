#!/bin/sh

# Wrapper script to run TRD Qt or command line application.

# Define display usage
display_usage ()
{
    echo "Start command line or Qt based TRD application"
    echo ""
    echo "usage:"
    echo "    $0 <mode> <arguments>"
    echo ""
    echo "    <mode>:"
    echo "        -cmd : command line based application"
    echo "        -qt  : Qt based application"
    echo ""
    echo "    <arguments>: Optional"
    echo "        -r 1280x720 : For switching to 720p"
    exit 1
}

# Call display usage
if [ $# -ne 1 ] && [ $# -ne 3 ]
then
    display_usage
fi

tty=`tty`
# Check mode
if [ $1 == "-cmd" ]
then
    # Check current terminal
    if [ $tty == "/dev/ttyPS0" ]
    then
        # Run command line based application
        if [ $# == 1 ]
        then
            video_cmd
        else
            video_cmd $2 $3
        fi
    else
        echo "Your current terminal is $tty."
        echo "Please start the command line based sobel filter TRD application from the UART terminal (/dev/ttyPS0)."
        exit 1
    fi
elif [ $1 == "-qt" ]
then
    # Run Qt based application
    if [ $# == 1 ]
    then
        video_qt
    else
        video_qt $2 $3
    fi
else
    # Call display usage
    display_usage
fi
