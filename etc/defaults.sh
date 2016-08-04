#---------------------------------*- sh -*-------------------------------------
# License
#
#     Copyright (C) 2011-2014 blueCAPE Lda
#
#     This file is part of the branch "get-em" available here:
#         https://github.com/wyldckat/ThirdParty-2.0.x/commits/get-em
#
#     This file is a derivative work of OpenFOAM.
#
#     OpenFOAM is free software: you can redistribute it and/or modify it
#     under the terms of the GNU General Public License as published by
#     the Free Software Foundation, either version 3 of the License, or
#     (at your option) any later version.
#
#     OpenFOAM is distributed in the hope that it will be useful, but WITHOUT
#     ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
#     FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
#     for more details.
#
#     You should have received a copy of the GNU General Public License
#     along with OpenFOAM.  If not, see <http://www.gnu.org/licenses/>.
#
# File
#     defaults.sh
#
# Description
#     Default version definitions for the get-em script. Here are defined all
#   of the version numbers that are not accessible otherwise.
#
# TODO: These definitions should be in OpenFOAM's own etc folder and be
#     sourced by "settings.sh".
#
#------------------------------------------------------------------------------

case "$WM_COMPILER" in
Gcc | Gcc++0x | Gcc48 | Gcc48++0x)
    gcc_version=gcc-4.8.2
    gmp_version=gmp-5.1.2
    mpfr_version=mpfr-3.1.2
    mpc_version=mpc-1.0.1

    binutils_version="binutils-2.23.52"
    ;;
Gcc49 | Gcc49++0x)
    gcc_version=gcc-4.9.0
    gmp_version=gmp-5.1.2
    mpfr_version=mpfr-3.1.2
    mpc_version=mpc-1.0.1

    binutils_version="binutils-2.23.52"
    ;;
Gcc47 | Gcc47++0x)
    gcc_version=gcc-4.7.3
    gmp_version=gmp-5.0.4
    mpfr_version=mpfr-3.1.0
    mpc_version=mpc-0.9

    binutils_version="binutils-2.23.52"
    ;;
Clang)
    clang_version=llvm-3.4

    gmp_version=gmp-5.1.2
    mpfr_version=mpfr-3.1.2
    ;;

mingw32)
#     gcc_version="gcc-4.5.4"
#     gmp_version="gmp-4.3.2"
#     mpfr_version="mpfr-2.4.2"
#     mpc_version="mpc-0.8.2"
#     binutils_version="binutils-2.22.52"

#     gcc_version=gcc-4.6.4
#     gmp_version=gmp-5.0.2
#     mpfr_version=mpfr-3.0.1
#     mpc_version=mpc-0.9
#     binutils_version="binutils-2.22.52"

    gcc_version=gcc-4.7.3
    gmp_version=gmp-5.0.4
    mpfr_version=mpfr-3.0.1
    mpc_version=mpc-0.9
    binutils_version="binutils-2.23.52"

#     gcc_version=gcc-4.8.2
#     gmp_version=gmp-5.1.2
#     mpfr_version=mpfr-3.1.2
#     mpc_version=mpc-1.0.1
#     binutils_version="binutils-2.23.52"

    #MinGW versions
    mingw32rt_version="mingwrt-3.20"
    w32api_version="w32api-3.17-2"
    ;;

mingw-w32 | mingw-w64)
#     gcc_version="gcc-4.5.4"
#     gmp_version="gmp-4.3.2"
#     mpfr_version="mpfr-2.4.2"
#     mpc_version="mpc-0.8.2"
#     binutils_version="binutils-2.22.52"

#     gcc_version=gcc-4.6.4
#     gmp_version=gmp-5.0.2
#     mpfr_version=mpfr-3.0.1
#     mpc_version=mpc-0.9
#     binutils_version="binutils-2.22.52"

    gcc_version=gcc-4.7.3
    gmp_version=gmp-5.0.4
    mpfr_version=mpfr-3.0.1
    mpc_version=mpc-0.9
    binutils_version="binutils-2.23.52"

#     gcc_version=gcc-4.8.2
#     gmp_version=gmp-5.1.2
#     mpfr_version=mpfr-3.1.2
#     mpc_version=mpc-1.0.1
#     binutils_version="binutils-2.23.52"

    #MinGW versions
    mingw_w64_version="3.1.0"
    ;;

*)
    echo
    echo "Warning in $WM_THIRD_PARTY_DIR/etc/defaults.sh:"
    echo "    Unknown OpenFOAM compiler type '$WM_COMPILER'"
    echo "    Please check your settings"
    echo
    ;;
esac

metis_version=$(. $WM_PROJECT_DIR/etc/config/metis.sh; \
    echo $METIS_VERSION | sed -e 's=metis-==')

boost_version=boost_1_54_0
cgal_version=CGAL-4.3

make_version=4.0
flex_version=2.5.35

qt_version=4.8.4

cmake_version=2.8.12.1

tecio_version=2009

libccmio_version=2.6.1

zlib_version=1.2.5
