# SPDX-License-Identifier: BSD-3-Clause
# Copyright Contributors to the OpenEXR Project.

include(GNUInstallDirs)

########################
## Target configuration

# TODO: Right now, we support compiling for multiple pythons at once
set(PYIMATH_OVERRIDE_PYTHON2_INSTALL_DIR "" CACHE STRING "Override the install location for any python 2.x modules compiled")
set(PYIMATH_OVERRIDE_PYTHON3_INSTALL_DIR "" CACHE STRING "Override the install location for any python 3.x modules compiled")

########################
## Build related options

# Suffix to append to root name, this helps with version management
# but can be turned off if you don't care, or otherwise customized
#
set(PYIMATH_LIB_SUFFIX "-${IMATH_VERSION_API}" CACHE STRING "String added to the end of all the libraries")

set(PYIMATH_DEBUG_POSTFIX "" CACHE STRING "String added to the end of PyImath library")
# This provides a root for the unique name of the library based on
# the version of python being compiled for
set(PYIMATH_LIB_PYTHONVER_ROOT "_Python" CACHE STRING "String added as a root to the identifier of the python version in the libraries")
