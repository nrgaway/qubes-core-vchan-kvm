#
# The Qubes OS Project, http://www.qubes-os.org
#
# Copyright (C) 2010  Rafal Wojtczuk  <rafal@invisiblethingslab.com>
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
#
#

CC ?= gcc
CFLAGS += -g -Wall
all: libu2mfn.so

libu2mfn.so : u2mfnlib.o
	$(CC) $(LDFLAGS) -shared -o libu2mfn.so u2mfnlib.o
u2mfnlib.o: u2mfnlib.c
	$(CC) $(CFLAGS) -fPIC -c u2mfnlib.c
clean:
	rm -f *.o *so *~ libu2mfn.so
	
		
