LOCAL_PATH:= $(call my-dir)

LLVM_ROOT_PATH := $(LOCAL_PATH)/../../../../external/llvm
include $(LLVM_ROOT_PATH)/llvm.mk

LOCAL_CFLAGS += $(local_cflags_for_slang)

bitcode_writer_3_2_SRC_FILES :=	\
	BitcodeWriter.cpp	\
	BitcodeWriterPass.cpp	\
	ValueEnumerator.cpp

# For the host
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(bitcode_writer_3_2_SRC_FILES)

LOCAL_MODULE:= libLLVMBitWriter_3_2

LOCAL_MODULE_TAGS := optional

include $(LLVM_HOST_BUILD_MK)
include $(LLVM_GEN_INTRINSICS_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

