include (../../shared.pri)

HEADERS		= meshio.h \
			$$VCGDIR/wrap/ply/plylib.h \
			$$VCGDIR/wrap/io_trimesh/export_obj.h \
			$$VCGDIR/wrap/io_trimesh/export_3ds.h \
			$$VCGDIR/wrap/io_trimesh/io_material.h \
			import_3ds.h \
			io_3ds.h 
				
SOURCES       += 	meshio.cpp \
			
DEFINES += LIB3DS_STATIC

TARGET        = io_3ds

INCLUDEPATH += /usr/include/lib3ds

# Notes on the paths of lib3ds files.
# Once you have compiled the library put the lib files in a dir named lib/XXX/ 
# where XXX is the name of your system according to the QT naming style.
# Linux users can rely on their own package managers and hope that it is installing the last version of lib3ds

win32-msvc:LIBS	+= ../../external/lib/win32-msvc/3ds.lib
win32-msvc2015:LIBS += ../../external/lib/win32-msvc2015/3ds.lib
win32-msvc2005:LIBS	+= ../../external/lib/win32-msvc2005/3ds.lib
win32-msvc2008:LIBS	+= ../../external/lib/win32-msvc2008/3ds.lib
win32-g++:LIBS		+= ../../external/lib/win32-gcc/lib3ds.a
linux-g++:LIBS += -l3ds

# unix:LIBS		+= -L../../../../code/lib/lib3ds-1.3.0/lib3ds/lib/unix -l3ds

# mac:LIBS -= -l3ds 
# mac:LIBS += ../../../../code/lib/lib3ds-1.3.0/lib/mac/lib3ds.a

macx:LIBS += $$MACLIBDIR/lib3ds.a

