
EXTRA_DIST =  

# Warning: This is an automatically generated file, do not edit!

if ENABLE_DEBUG
ASSEMBLY_COMPILER_COMMAND = dmcs
ASSEMBLY_COMPILER_FLAGS =  -noconfig -codepage:utf8 -warn:4 -optimize- -debug "-define:DEBUG;TRACE"
ASSEMBLY = bin/Debug/Tests.dll
ASSEMBLY_MDB = $(ASSEMBLY).mdb
COMPILE_TARGET = library
PROJECT_REFERENCES =  \
	../NGettext/bin/Debug/NGettext.dll \
	../External/nunit-framework/bin/Debug/net-4.0/nunit.framework.dll
BUILD_DIR = bin/Debug/

TESTS_DLL_MDB_SOURCE=bin/Debug/Tests.dll.mdb
TESTS_DLL_MDB=$(BUILD_DIR)/Tests.dll.mdb
TEST_MO_SOURCE=TestResources/locales/ru_RU/LC_MESSAGES/Test.mo
TEST_PO_SOURCE=TestResources/locales/ru_RU/LC_MESSAGES/Test.po
NGETTEXT_DLL_SOURCE=../NGettext/bin/Debug/NGettext.dll
NGETTEXT_DLL_MDB_SOURCE=../NGettext/bin/Debug/NGettext.dll.mdb
NGETTEXT_DLL_MDB=$(BUILD_DIR)/NGettext.dll.mdb
NUNIT_FRAMEWORK_DLL_SOURCE=../External/nunit-framework/bin/Debug/net-4.0/nunit.framework.dll
NUNIT_FRAMEWORK_DLL_MDB_SOURCE=../External/nunit-framework/bin/Debug/net-4.0/nunit.framework.dll.mdb
NUNIT_FRAMEWORK_DLL_MDB=$(BUILD_DIR)/nunit.framework.dll.mdb

endif

if ENABLE_RELEASE
ASSEMBLY_COMPILER_COMMAND = dmcs
ASSEMBLY_COMPILER_FLAGS =  -noconfig -codepage:utf8 -warn:4 -optimize+ "-define:TRACE"
ASSEMBLY = bin/Release/Tests.dll
ASSEMBLY_MDB = 
COMPILE_TARGET = library
PROJECT_REFERENCES =  \
	../NGettext/bin/Release/NGettext.dll \
	../External/nunit-framework/bin/Release/net-4.0/nunit.framework.dll
BUILD_DIR = bin/Release/

TESTS_DLL_MDB=
TEST_MO_SOURCE=TestResources/locales/ru_RU/LC_MESSAGES/Test.mo
TEST_PO_SOURCE=TestResources/locales/ru_RU/LC_MESSAGES/Test.po
NGETTEXT_DLL_SOURCE=../NGettext/bin/Release/NGettext.dll
NGETTEXT_DLL_MDB=
NUNIT_FRAMEWORK_DLL_SOURCE=../External/nunit-framework/bin/Release/net-4.0/nunit.framework.dll
NUNIT_FRAMEWORK_DLL_MDB=

endif

AL=al
SATELLITE_ASSEMBLY_NAME=$(notdir $(basename $(ASSEMBLY))).resources.dll

PROGRAMFILES = \
	$(TESTS_DLL_MDB) \
	$(NGETTEXT_DLL) \
	$(NGETTEXT_DLL_MDB) \
	$(NUNIT_FRAMEWORK_DLL) \
	$(NUNIT_FRAMEWORK_DLL_MDB)  

PROGRAMFILES_TESTRESOURCES_LOCALES_RU_RU_LC_MESSAGES = \
	$(TEST_MO) \
	$(TEST_PO)  

LINUX_PKGCONFIG = \
	$(NGETTEXT_TESTS_PC)  


RESGEN=resgen2
	
all: $(ASSEMBLY) $(PROGRAMFILES) $(PROGRAMFILES_TESTRESOURCES_LOCALES_RU_RU_LC_MESSAGES) $(LINUX_PKGCONFIG) 

FILES = \
	BaseCatalogTest.cs \
	Loaders/MoFileParserTest.cs \
	Plural/PluralFormProcessorTest.cs \
	Properties/AssemblyInfo.cs \
	Stabs/EmptyBaseCatalog.cs \
	CatalogTest.cs 

DATA_FILES = 

RESOURCES = 

EXTRAS = \
	TestResources/locales/ru_RU/LC_MESSAGES/Test.mo \
	TestResources/locales/ru_RU/LC_MESSAGES/Test.po \
	ngettext.tests.pc.in 

REFERENCES =  \
	System \
	System.Core \
	System.Xml.Linq \
	System.Data.DataSetExtensions \
	Microsoft.CSharp \
	System.Data \
	System.Xml

DLL_REFERENCES = 

CLEANFILES = $(PROGRAMFILES) $(PROGRAMFILES_TESTRESOURCES_LOCALES_RU_RU_LC_MESSAGES) $(LINUX_PKGCONFIG) 

include $(top_srcdir)/Makefile.include

TEST_MO = $(BUILD_DIR)/TestResources/locales/ru_RU/LC_MESSAGES/Test.mo
TEST_PO = $(BUILD_DIR)/TestResources/locales/ru_RU/LC_MESSAGES/Test.po
NGETTEXT_DLL = $(BUILD_DIR)/NGettext.dll
NUNIT_FRAMEWORK_DLL = $(BUILD_DIR)/nunit.framework.dll
NGETTEXT_TESTS_PC = $(BUILD_DIR)/ngettext.tests.pc

$(eval $(call emit-deploy-target,TEST_MO))
$(eval $(call emit-deploy-target,TEST_PO))
$(eval $(call emit-deploy-target,NGETTEXT_DLL))
$(eval $(call emit-deploy-target,NGETTEXT_DLL_MDB))
$(eval $(call emit-deploy-target,NUNIT_FRAMEWORK_DLL))
$(eval $(call emit-deploy-target,NUNIT_FRAMEWORK_DLL_MDB))
$(eval $(call emit-deploy-wrapper,NGETTEXT_TESTS_PC,ngettext.tests.pc))


$(eval $(call emit_resgen_targets))
$(build_xamlg_list): %.xaml.g.cs: %.xaml
	xamlg '$<'

$(ASSEMBLY_MDB): $(ASSEMBLY)

$(ASSEMBLY): $(build_sources) $(build_resources) $(build_datafiles) $(DLL_REFERENCES) $(PROJECT_REFERENCES) $(build_xamlg_list) $(build_satellite_assembly_list)
	mkdir -p $(shell dirname $(ASSEMBLY))
	$(ASSEMBLY_COMPILER_COMMAND) $(ASSEMBLY_COMPILER_FLAGS) -out:$(ASSEMBLY) -target:$(COMPILE_TARGET) $(build_sources_embed) $(build_resources_embed) $(build_references_ref)
