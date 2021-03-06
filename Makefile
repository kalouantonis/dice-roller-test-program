#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

CC = gcc
CXX = g++
AR = ar
LD = g++
WINDRES = windres

INC = 
CFLAGS = 
RESINC = 
LIBDIR = 
LIB = 
LDFLAGS = 

INC_DEBUG = $(INC) -Iinclude -Idependencies
CFLAGS_DEBUG = $(CFLAGS) -std=c++11 -Wall -g -Wno-switch -Wno-reorder -pthread -D_DEBUG
RESINC_DEBUG = $(RESINC)
RCFLAGS_DEBUG = $(RCFLAGS)
LIBDIR_DEBUG = $(LIBDIR)
LIB_DEBUG = $(LIB)
LDFLAGS_DEBUG = $(LDFLAGS)
OBJDIR_DEBUG = obj/Debug
DEP_DEBUG = 
OUT_DEBUG = /libEngine.a

INC_RELEASE = $(INC)
CFLAGS_RELEASE = $(CFLAGS) -O2 -std=c++11 -Wall -Wno-switch -pthread
RESINC_RELEASE = $(RESINC)
RCFLAGS_RELEASE = $(RCFLAGS)
LIBDIR_RELEASE = $(LIBDIR)
LIB_RELEASE = $(LIB)
LDFLAGS_RELEASE = $(LDFLAGS) -s
OBJDIR_RELEASE = obj/Release
DEP_RELEASE = 
OUT_RELEASE = /libEngine.a

INC_PROFILE = $(INC) -Idependencies -Iinclude
CFLAGS_PROFILE = $(CFLAGS) -march=i486 -O2 -Wall -pg -Wno-switch -D_DEBUG
RESINC_PROFILE = $(RESINC)
RCFLAGS_PROFILE = $(RCFLAGS)
LIBDIR_PROFILE = $(LIBDIR) -Linclude -Ldependencies
LIB_PROFILE = $(LIB)
LDFLAGS_PROFILE = $(LDFLAGS) -pg
OBJDIR_PROFILE = obj/Release
DEP_PROFILE = 
OUT_PROFILE = /libEngine.a

OBJ_DEBUG = $(OBJDIR_DEBUG)/src/main.o $(OBJDIR_DEBUG)/src/Utils/Logger.o $(OBJDIR_DEBUG)/src/Resources/XMLoader.o $(OBJDIR_DEBUG)/src/Memory/MemoryPool.o $(OBJDIR_DEBUG)/src/Graphics/TextureEmitter.o $(OBJDIR_DEBUG)/src/Graphics/Sprite.o $(OBJDIR_DEBUG)/src/Graphics/IParticleEmitter.o $(OBJDIR_DEBUG)/src/Graphics/CircleEmitter.o $(OBJDIR_DEBUG)/src/Engine.o $(OBJDIR_DEBUG)/dependencies/tinyxml/tinyxmlparser.o $(OBJDIR_DEBUG)/dependencies/tinyxml/tinyxmlerror.o $(OBJDIR_DEBUG)/dependencies/tinyxml/tinyxml.o $(OBJDIR_DEBUG)/dependencies/tinyxml/tinystr.o

OBJ_RELEASE = $(OBJDIR_RELEASE)/src/main.o $(OBJDIR_RELEASE)/src/Utils/Logger.o $(OBJDIR_RELEASE)/src/Resources/XMLoader.o $(OBJDIR_RELEASE)/src/Memory/MemoryPool.o $(OBJDIR_RELEASE)/src/Graphics/TextureEmitter.o $(OBJDIR_RELEASE)/src/Graphics/Sprite.o $(OBJDIR_RELEASE)/src/Graphics/IParticleEmitter.o $(OBJDIR_RELEASE)/src/Graphics/CircleEmitter.o $(OBJDIR_RELEASE)/src/Engine.o $(OBJDIR_RELEASE)/dependencies/tinyxml/tinyxmlparser.o $(OBJDIR_RELEASE)/dependencies/tinyxml/tinyxmlerror.o $(OBJDIR_RELEASE)/dependencies/tinyxml/tinyxml.o $(OBJDIR_RELEASE)/dependencies/tinyxml/tinystr.o

OBJ_PROFILE = $(OBJDIR_PROFILE)/src/main.o $(OBJDIR_PROFILE)/src/Utils/Logger.o $(OBJDIR_PROFILE)/src/Resources/XMLoader.o $(OBJDIR_PROFILE)/src/Memory/MemoryPool.o $(OBJDIR_PROFILE)/src/Graphics/TextureEmitter.o $(OBJDIR_PROFILE)/src/Graphics/Sprite.o $(OBJDIR_PROFILE)/src/Graphics/IParticleEmitter.o $(OBJDIR_PROFILE)/src/Graphics/CircleEmitter.o $(OBJDIR_PROFILE)/src/Engine.o $(OBJDIR_PROFILE)/dependencies/tinyxml/tinyxmlparser.o $(OBJDIR_PROFILE)/dependencies/tinyxml/tinyxmlerror.o $(OBJDIR_PROFILE)/dependencies/tinyxml/tinyxml.o $(OBJDIR_PROFILE)/dependencies/tinyxml/tinystr.o

all: debug release profile

clean: clean_debug clean_release clean_profile

before_debug: 
	test -d $(OBJDIR_DEBUG)/src || mkdir -p $(OBJDIR_DEBUG)/src
	test -d $(OBJDIR_DEBUG)/src/Utils || mkdir -p $(OBJDIR_DEBUG)/src/Utils
	test -d $(OBJDIR_DEBUG)/src/Resources || mkdir -p $(OBJDIR_DEBUG)/src/Resources
	test -d $(OBJDIR_DEBUG)/src/Memory || mkdir -p $(OBJDIR_DEBUG)/src/Memory
	test -d $(OBJDIR_DEBUG)/src/Graphics || mkdir -p $(OBJDIR_DEBUG)/src/Graphics
	test -d $(OBJDIR_DEBUG)/dependencies/tinyxml || mkdir -p $(OBJDIR_DEBUG)/dependencies/tinyxml

after_debug: 

debug: before_debug out_debug after_debug

out_debug: before_debug $(OBJ_DEBUG) $(DEP_DEBUG)
	$(AR) rcs $(OUT_DEBUG) $(OBJ_DEBUG)

$(OBJDIR_DEBUG)/src/main.o: src/main.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/main.cpp -o $(OBJDIR_DEBUG)/src/main.o

$(OBJDIR_DEBUG)/src/Utils/Logger.o: src/Utils/Logger.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/Utils/Logger.cpp -o $(OBJDIR_DEBUG)/src/Utils/Logger.o

$(OBJDIR_DEBUG)/src/Resources/XMLoader.o: src/Resources/XMLoader.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/Resources/XMLoader.cpp -o $(OBJDIR_DEBUG)/src/Resources/XMLoader.o

$(OBJDIR_DEBUG)/src/Memory/MemoryPool.o: src/Memory/MemoryPool.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/Memory/MemoryPool.cpp -o $(OBJDIR_DEBUG)/src/Memory/MemoryPool.o

$(OBJDIR_DEBUG)/src/Graphics/TextureEmitter.o: src/Graphics/TextureEmitter.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/Graphics/TextureEmitter.cpp -o $(OBJDIR_DEBUG)/src/Graphics/TextureEmitter.o

$(OBJDIR_DEBUG)/src/Graphics/Sprite.o: src/Graphics/Sprite.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/Graphics/Sprite.cpp -o $(OBJDIR_DEBUG)/src/Graphics/Sprite.o

$(OBJDIR_DEBUG)/src/Graphics/IParticleEmitter.o: src/Graphics/IParticleEmitter.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/Graphics/IParticleEmitter.cpp -o $(OBJDIR_DEBUG)/src/Graphics/IParticleEmitter.o

$(OBJDIR_DEBUG)/src/Graphics/CircleEmitter.o: src/Graphics/CircleEmitter.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/Graphics/CircleEmitter.cpp -o $(OBJDIR_DEBUG)/src/Graphics/CircleEmitter.o

$(OBJDIR_DEBUG)/src/Engine.o: src/Engine.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/Engine.cpp -o $(OBJDIR_DEBUG)/src/Engine.o

$(OBJDIR_DEBUG)/dependencies/tinyxml/tinyxmlparser.o: dependencies/tinyxml/tinyxmlparser.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c dependencies/tinyxml/tinyxmlparser.cpp -o $(OBJDIR_DEBUG)/dependencies/tinyxml/tinyxmlparser.o

$(OBJDIR_DEBUG)/dependencies/tinyxml/tinyxmlerror.o: dependencies/tinyxml/tinyxmlerror.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c dependencies/tinyxml/tinyxmlerror.cpp -o $(OBJDIR_DEBUG)/dependencies/tinyxml/tinyxmlerror.o

$(OBJDIR_DEBUG)/dependencies/tinyxml/tinyxml.o: dependencies/tinyxml/tinyxml.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c dependencies/tinyxml/tinyxml.cpp -o $(OBJDIR_DEBUG)/dependencies/tinyxml/tinyxml.o

$(OBJDIR_DEBUG)/dependencies/tinyxml/tinystr.o: dependencies/tinyxml/tinystr.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c dependencies/tinyxml/tinystr.cpp -o $(OBJDIR_DEBUG)/dependencies/tinyxml/tinystr.o

clean_debug: 
	rm -f $(OBJ_DEBUG) $(OUT_DEBUG)
	rm -rf $(OBJDIR_DEBUG)/src
	rm -rf $(OBJDIR_DEBUG)/src/Utils
	rm -rf $(OBJDIR_DEBUG)/src/Resources
	rm -rf $(OBJDIR_DEBUG)/src/Memory
	rm -rf $(OBJDIR_DEBUG)/src/Graphics
	rm -rf $(OBJDIR_DEBUG)/dependencies/tinyxml

before_release: 
	test -d $(OBJDIR_RELEASE)/src || mkdir -p $(OBJDIR_RELEASE)/src
	test -d $(OBJDIR_RELEASE)/src/Utils || mkdir -p $(OBJDIR_RELEASE)/src/Utils
	test -d $(OBJDIR_RELEASE)/src/Resources || mkdir -p $(OBJDIR_RELEASE)/src/Resources
	test -d $(OBJDIR_RELEASE)/src/Memory || mkdir -p $(OBJDIR_RELEASE)/src/Memory
	test -d $(OBJDIR_RELEASE)/src/Graphics || mkdir -p $(OBJDIR_RELEASE)/src/Graphics
	test -d $(OBJDIR_RELEASE)/dependencies/tinyxml || mkdir -p $(OBJDIR_RELEASE)/dependencies/tinyxml

after_release: 

release: before_release out_release after_release

out_release: before_release $(OBJ_RELEASE) $(DEP_RELEASE)
	$(AR) rcs $(OUT_RELEASE) $(OBJ_RELEASE)

$(OBJDIR_RELEASE)/src/main.o: src/main.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/main.cpp -o $(OBJDIR_RELEASE)/src/main.o

$(OBJDIR_RELEASE)/src/Utils/Logger.o: src/Utils/Logger.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/Utils/Logger.cpp -o $(OBJDIR_RELEASE)/src/Utils/Logger.o

$(OBJDIR_RELEASE)/src/Resources/XMLoader.o: src/Resources/XMLoader.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/Resources/XMLoader.cpp -o $(OBJDIR_RELEASE)/src/Resources/XMLoader.o

$(OBJDIR_RELEASE)/src/Memory/MemoryPool.o: src/Memory/MemoryPool.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/Memory/MemoryPool.cpp -o $(OBJDIR_RELEASE)/src/Memory/MemoryPool.o

$(OBJDIR_RELEASE)/src/Graphics/TextureEmitter.o: src/Graphics/TextureEmitter.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/Graphics/TextureEmitter.cpp -o $(OBJDIR_RELEASE)/src/Graphics/TextureEmitter.o

$(OBJDIR_RELEASE)/src/Graphics/Sprite.o: src/Graphics/Sprite.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/Graphics/Sprite.cpp -o $(OBJDIR_RELEASE)/src/Graphics/Sprite.o

$(OBJDIR_RELEASE)/src/Graphics/IParticleEmitter.o: src/Graphics/IParticleEmitter.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/Graphics/IParticleEmitter.cpp -o $(OBJDIR_RELEASE)/src/Graphics/IParticleEmitter.o

$(OBJDIR_RELEASE)/src/Graphics/CircleEmitter.o: src/Graphics/CircleEmitter.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/Graphics/CircleEmitter.cpp -o $(OBJDIR_RELEASE)/src/Graphics/CircleEmitter.o

$(OBJDIR_RELEASE)/src/Engine.o: src/Engine.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/Engine.cpp -o $(OBJDIR_RELEASE)/src/Engine.o

$(OBJDIR_RELEASE)/dependencies/tinyxml/tinyxmlparser.o: dependencies/tinyxml/tinyxmlparser.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c dependencies/tinyxml/tinyxmlparser.cpp -o $(OBJDIR_RELEASE)/dependencies/tinyxml/tinyxmlparser.o

$(OBJDIR_RELEASE)/dependencies/tinyxml/tinyxmlerror.o: dependencies/tinyxml/tinyxmlerror.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c dependencies/tinyxml/tinyxmlerror.cpp -o $(OBJDIR_RELEASE)/dependencies/tinyxml/tinyxmlerror.o

$(OBJDIR_RELEASE)/dependencies/tinyxml/tinyxml.o: dependencies/tinyxml/tinyxml.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c dependencies/tinyxml/tinyxml.cpp -o $(OBJDIR_RELEASE)/dependencies/tinyxml/tinyxml.o

$(OBJDIR_RELEASE)/dependencies/tinyxml/tinystr.o: dependencies/tinyxml/tinystr.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c dependencies/tinyxml/tinystr.cpp -o $(OBJDIR_RELEASE)/dependencies/tinyxml/tinystr.o

clean_release: 
	rm -f $(OBJ_RELEASE) $(OUT_RELEASE)
	rm -rf $(OBJDIR_RELEASE)/src
	rm -rf $(OBJDIR_RELEASE)/src/Utils
	rm -rf $(OBJDIR_RELEASE)/src/Resources
	rm -rf $(OBJDIR_RELEASE)/src/Memory
	rm -rf $(OBJDIR_RELEASE)/src/Graphics
	rm -rf $(OBJDIR_RELEASE)/dependencies/tinyxml

before_profile: 
	test -d $(OBJDIR_PROFILE)/src || mkdir -p $(OBJDIR_PROFILE)/src
	test -d $(OBJDIR_PROFILE)/src/Utils || mkdir -p $(OBJDIR_PROFILE)/src/Utils
	test -d $(OBJDIR_PROFILE)/src/Resources || mkdir -p $(OBJDIR_PROFILE)/src/Resources
	test -d $(OBJDIR_PROFILE)/src/Memory || mkdir -p $(OBJDIR_PROFILE)/src/Memory
	test -d $(OBJDIR_PROFILE)/src/Graphics || mkdir -p $(OBJDIR_PROFILE)/src/Graphics
	test -d $(OBJDIR_PROFILE)/dependencies/tinyxml || mkdir -p $(OBJDIR_PROFILE)/dependencies/tinyxml

after_profile: 

profile: before_profile out_profile after_profile

out_profile: before_profile $(OBJ_PROFILE) $(DEP_PROFILE)
	$(AR) rcs $(OUT_PROFILE) $(OBJ_PROFILE)

$(OBJDIR_PROFILE)/src/main.o: src/main.cpp
	$(CXX) $(CFLAGS_PROFILE) $(INC_PROFILE) -c src/main.cpp -o $(OBJDIR_PROFILE)/src/main.o

$(OBJDIR_PROFILE)/src/Utils/Logger.o: src/Utils/Logger.cpp
	$(CXX) $(CFLAGS_PROFILE) $(INC_PROFILE) -c src/Utils/Logger.cpp -o $(OBJDIR_PROFILE)/src/Utils/Logger.o

$(OBJDIR_PROFILE)/src/Resources/XMLoader.o: src/Resources/XMLoader.cpp
	$(CXX) $(CFLAGS_PROFILE) $(INC_PROFILE) -c src/Resources/XMLoader.cpp -o $(OBJDIR_PROFILE)/src/Resources/XMLoader.o

$(OBJDIR_PROFILE)/src/Memory/MemoryPool.o: src/Memory/MemoryPool.cpp
	$(CXX) $(CFLAGS_PROFILE) $(INC_PROFILE) -c src/Memory/MemoryPool.cpp -o $(OBJDIR_PROFILE)/src/Memory/MemoryPool.o

$(OBJDIR_PROFILE)/src/Graphics/TextureEmitter.o: src/Graphics/TextureEmitter.cpp
	$(CXX) $(CFLAGS_PROFILE) $(INC_PROFILE) -c src/Graphics/TextureEmitter.cpp -o $(OBJDIR_PROFILE)/src/Graphics/TextureEmitter.o

$(OBJDIR_PROFILE)/src/Graphics/Sprite.o: src/Graphics/Sprite.cpp
	$(CXX) $(CFLAGS_PROFILE) $(INC_PROFILE) -c src/Graphics/Sprite.cpp -o $(OBJDIR_PROFILE)/src/Graphics/Sprite.o

$(OBJDIR_PROFILE)/src/Graphics/IParticleEmitter.o: src/Graphics/IParticleEmitter.cpp
	$(CXX) $(CFLAGS_PROFILE) $(INC_PROFILE) -c src/Graphics/IParticleEmitter.cpp -o $(OBJDIR_PROFILE)/src/Graphics/IParticleEmitter.o

$(OBJDIR_PROFILE)/src/Graphics/CircleEmitter.o: src/Graphics/CircleEmitter.cpp
	$(CXX) $(CFLAGS_PROFILE) $(INC_PROFILE) -c src/Graphics/CircleEmitter.cpp -o $(OBJDIR_PROFILE)/src/Graphics/CircleEmitter.o

$(OBJDIR_PROFILE)/src/Engine.o: src/Engine.cpp
	$(CXX) $(CFLAGS_PROFILE) $(INC_PROFILE) -c src/Engine.cpp -o $(OBJDIR_PROFILE)/src/Engine.o

$(OBJDIR_PROFILE)/dependencies/tinyxml/tinyxmlparser.o: dependencies/tinyxml/tinyxmlparser.cpp
	$(CXX) $(CFLAGS_PROFILE) $(INC_PROFILE) -c dependencies/tinyxml/tinyxmlparser.cpp -o $(OBJDIR_PROFILE)/dependencies/tinyxml/tinyxmlparser.o

$(OBJDIR_PROFILE)/dependencies/tinyxml/tinyxmlerror.o: dependencies/tinyxml/tinyxmlerror.cpp
	$(CXX) $(CFLAGS_PROFILE) $(INC_PROFILE) -c dependencies/tinyxml/tinyxmlerror.cpp -o $(OBJDIR_PROFILE)/dependencies/tinyxml/tinyxmlerror.o

$(OBJDIR_PROFILE)/dependencies/tinyxml/tinyxml.o: dependencies/tinyxml/tinyxml.cpp
	$(CXX) $(CFLAGS_PROFILE) $(INC_PROFILE) -c dependencies/tinyxml/tinyxml.cpp -o $(OBJDIR_PROFILE)/dependencies/tinyxml/tinyxml.o

$(OBJDIR_PROFILE)/dependencies/tinyxml/tinystr.o: dependencies/tinyxml/tinystr.cpp
	$(CXX) $(CFLAGS_PROFILE) $(INC_PROFILE) -c dependencies/tinyxml/tinystr.cpp -o $(OBJDIR_PROFILE)/dependencies/tinyxml/tinystr.o

clean_profile: 
	rm -f $(OBJ_PROFILE) $(OUT_PROFILE)
	rm -rf $(OBJDIR_PROFILE)/src
	rm -rf $(OBJDIR_PROFILE)/src/Utils
	rm -rf $(OBJDIR_PROFILE)/src/Resources
	rm -rf $(OBJDIR_PROFILE)/src/Memory
	rm -rf $(OBJDIR_PROFILE)/src/Graphics
	rm -rf $(OBJDIR_PROFILE)/dependencies/tinyxml

.PHONY: before_debug after_debug clean_debug before_release after_release clean_release before_profile after_profile clean_profile

