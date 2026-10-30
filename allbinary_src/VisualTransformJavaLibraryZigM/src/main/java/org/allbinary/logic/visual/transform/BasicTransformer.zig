//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
// 
// By agreeing to this license you and any business entity you represent are
// legally bound to the AllBinary Open License Version 1 legal agreement.
// 
// You may obtain the AllBinary Open License Version 1 legal agreement from
// AllBinary or the root directory of AllBinary's AllBinary Platform repository.
// 
// Created By: Travis Berthelot
//   
// Generated Code Do Not Modify
// package org.allbinary.logic.visual.transform

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const ByteArrayInputStream = @import("java/io/ByteArrayInputStream.zig").ByteArrayInputStream;
const ByteArrayOutputStream = @import("java/io/ByteArrayOutputStream.zig").ByteArrayOutputStream;
// const InputStream = @import("java/io/InputStream.zig").InputStream;
// const URIResolver = @import("javax/xml/transform/URIResolver.zig").URIResolver;
const BasicUriResolver = @import("org/allbinary/data/tree/dom/BasicUriResolver.zig").BasicUriResolver;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbCrypt = @import("org/allbinary/logic/control/crypt/jcehelper/AbCrypt.zig").AbCrypt;
const KeySpecFactory = @import("org/allbinary/logic/control/crypt/jcehelper/KeySpecFactory.zig").KeySpecFactory;
const AbFileInputStream = @import("org/allbinary/logic/io/AbFileInputStream.zig").AbFileInputStream;
const StreamUtil = @import("org/allbinary/logic/io/StreamUtil.zig").StreamUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const PathUtil = @import("org/allbinary/logic/io/path/PathUtil.zig").PathUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AbKeys = @import("org/allbinary/logic/system/security/AbKeys.zig").AbKeys;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const TransformInfoTemplateData = @import("org/allbinary/logic/visual/transform/info/template/TransformInfoTemplateData.zig").TransformInfoTemplateData;
const AbTransformer = @import("org/allbinary/logic/visual/transform/AbTransformer.zig").AbTransformer;

pub const BasicTransformer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.BasicTransformer";
    base: AbTransformer = undefined,
    logUtil: ?*LogUtil = null,
    streamUtil: ?*StreamUtil = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.streamUtil = Inheritance.upcast(?*StreamUtil, StreamUtil.getInstance());
        
    }
    

    pub fn create2(abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbTransformer, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        this.abeClientInformation = abeClientInformation;
        _ = this.setTemplateAsInputStream();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn setEncryptedTemplateFileAsInputStream(self: *Self, file: ?*AbFile) void {
        var outputStream: ?*ByteArrayOutputStream = null;
        var inputStream: ?*AbFileInputStream = null;
        { // try
            outputStream = ByteArrayOutputStream.create();
            inputStream = Inheritance.callStatic(AbFileInputStream, "create1", .{ file });
            outputStream = Inheritance.cast(?*ByteArrayOutputStream, Inheritance.call(self.streamUtil.?, "get", .{ inputStream, outputStream, array_N66744: { const array_N66744_array = allocator.alloc(i8, @intCast(16384)) catch unreachable; @memset(array_N66744_array, 0); break :array_N66744 array_N66744_array; } }));
            const abCrypt: ?*AbCrypt = Inheritance.callStatic(AbCrypt, "create2", .{ KeySpecFactory.DESEDE, Inheritance.call(AbKeys.getInstance().?, "getKey", .{ self.abeClientInformation, file.?.getAbsolutePath() }) });
            const decrypted: []i8 = Inheritance.call(abCrypt.?, "decrypt", .{ outputStream.?.toByteArray() });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORY })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Decrypted Template: \n"), Inheritance.callStatic(String, "create1", .{ decrypted })), self, String.literal("setEncryptedTemplateFileAsInputStream(file)") });
            }
            _ = Inheritance.call(self, "setInputStream", .{ Inheritance.cast(?*InputStream, Inheritance.callStatic(ByteArrayInputStream, "create1", .{ decrypted })) });
            _ = Inheritance.call(self, "setURIResolver", .{ Inheritance.cast(?*URIResolver, Inheritance.callStatic(BasicUriResolver, "create1", .{ TransformInfoTemplateData.getInstance().?.ENCRYPTED_EXTENSION })) });
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 const stringBuffer: ?*StringMaker = StringMaker.create(); _ = stringBuffer;
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Failed to get Encrypted File: ") });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ file.?.getPath() });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" \nName:") });
//                 _ = Inheritance.call(stringBuffer.?, "append", .{ file.?.getName() });
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("setEncryptedTemplateFileAsInputStream()"), e });
//             }
//             std.debug.panic("{any}", .{e});
        { // finally
            _ = Inheritance.call(self.streamUtil.?, "close", .{ outputStream });
            _ = Inheritance.call(self.streamUtil.?, "close", .{ inputStream });
        }
    }
    

    // throws Exception
    pub fn setEncryptedTemplateAsInputStream(self: *Self) void {
        var outputStream: ?*ByteArrayOutputStream = null;
        var inputStream: ?*ByteArrayInputStream = null;
        { // try
            outputStream = ByteArrayOutputStream.create();
            inputStream = Inheritance.upcast(@TypeOf(inputStream), Inheritance.callStatic(ByteArrayInputStream, "create1", .{ Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getTemplate").getTemplate().?, "getBytes").getBytes() }));
            outputStream = Inheritance.cast(?*ByteArrayOutputStream, Inheritance.call(self.streamUtil.?, "get", .{ inputStream, outputStream, array_N68126: { const array_N68126_array = allocator.alloc(i8, @intCast(16384)) catch unreachable; @memset(array_N68126_array, 0); break :array_N68126 array_N68126_array; } }));
            const abCrypt: ?*AbCrypt = Inheritance.callStatic(AbCrypt, "create2", .{ KeySpecFactory.DESEDE, Inheritance.call(AbKeys.getInstance().?, "getKey", .{ self.abeClientInformation, Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getName").getName() }) });
            const decrypted: []i8 = Inheritance.call(abCrypt.?, "decrypt", .{ outputStream.?.toByteArray() });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORY })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Decrypted Template: \n"), Object.toString(Object.of(decrypted))), self, String.literal("setEncryptedTemplateAsInputStream()") });
            }
            _ = Inheritance.call(self, "setInputStream", .{ Inheritance.cast(?*InputStream, Inheritance.callStatic(ByteArrayInputStream, "create1", .{ decrypted })) });
            _ = Inheritance.call(self, "setURIResolver", .{ Inheritance.cast(?*URIResolver, Inheritance.callStatic(BasicUriResolver, "create1", .{ TransformInfoTemplateData.getInstance().?.ENCRYPTED_EXTENSION })) });
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(String.literal("Failed to set with template: "), Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getTemplateFilePath").getTemplateFilePath()), self, String.literal("setEncryptedTemplateFileAsInputStream()"), e });
//             }
//             std.debug.panic("{any}", .{e});
        { // finally
            _ = Inheritance.call(self.streamUtil.?, "close", .{ outputStream });
            _ = Inheritance.call(self.streamUtil.?, "close", .{ inputStream });
        }
    }
    

    // throws Exception
    pub fn setTemplateAsInputStream(self: *Self) void {
        var inputStream: ?*AbFileInputStream = null;
        var outputStream: ?*ByteArrayOutputStream = null;
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORY })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "log").log(), self, String.literal("setTemplateAsInputStream()") });
            }
            const transformInfoTemplateData: ?*TransformInfoTemplateData = Inheritance.upcast(?*TransformInfoTemplateData, TransformInfoTemplateData.getInstance());
            const pathUtil: ?*PathUtil = Inheritance.upcast(?*PathUtil, PathUtil.getInstance());
            if (Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getTemplateFilePath").getTemplateFilePath() != null) {
                const extension: ?*String = Inheritance.upcast(?*String, Inheritance.call(pathUtil.?, "getExtensionWithAbPath", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getTemplateFilePath").getTemplateFilePath() }));
                const filePath: ?*String = Inheritance.upcast(?*String, Inheritance.call(pathUtil.?, "getWithoutExtensionWithAbPath", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getTemplateFilePath").getTemplateFilePath() }));
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORY })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "log").log(), self, String.literal("setTemplateAsInputStream()") });
                }
                if (Inheritance.call(extension.?, "compareTo", .{ transformInfoTemplateData.?.UNCRYPTED_EXTENSION }) == 0) {
                    var stringBuffer: ?*StringMaker = StringMaker.create();
                    _ = Inheritance.call(stringBuffer.?, "append", .{ filePath });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.EXTENSION_SEP });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ transformInfoTemplateData.?.ENCRYPTED_EXTENSION });
                    const encFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ Object.toString(Object.of(stringBuffer)) }));
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORY })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "log").log(), self, String.literal("setTemplateAsInputStream()") });
                    }
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORY })) {
                        stringBuffer = StringMaker.create();
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Encrypted Template File isFile=") });
                        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ encFile.?.isFile() });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nEncTemplateFilePath: ") });
                        _ = Inheritance.call(stringBuffer.?, "append", .{ encFile.?.getPath() });
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("setTemplateAsInputStream()") });
                    }
                    if (encFile.?.isFile()) {
                        _ = Inheritance.call(self, "setEncryptedTemplateFileAsInputStream", .{ encFile });
                        return;
                    } else {
                        const file: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getTemplateFilePath").getTemplateFilePath() }));
                        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORY })) {
                            _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "log").log(), self, String.literal("setTemplateAsInputStream()") });
                        }
                        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORY })) {
                            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Template File isFile="), file.?.isFile()), self, String.literal("setTemplateAsInputStream()") });
                        }
                        if (file.?.isFile()) {
                            inputStream = Inheritance.callStatic(AbFileInputStream, "create1", .{ file });
                            outputStream = ByteArrayOutputStream.create();
                            outputStream = Inheritance.cast(?*ByteArrayOutputStream, Inheritance.call(self.streamUtil.?, "get", .{ inputStream, outputStream, array_N71915: { const array_N71915_array = allocator.alloc(i8, @intCast(16384)) catch unreachable; @memset(array_N71915_array, 0); break :array_N71915 array_N71915_array; } }));
                            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORY })) {
                                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Template: "), Object.toString(Object.of(outputStream))), self, String.literal("getTemplateAsInputStream()") });
                            }
                            _ = Inheritance.call(self, "setInputStream", .{ Inheritance.cast(?*InputStream, Inheritance.callStatic(ByteArrayInputStream, "create1", .{ outputStream.?.toByteArray() })) });
                            _ = Inheritance.call(self, "setURIResolver", .{ Inheritance.cast(?*URIResolver, Inheritance.callStatic(BasicUriResolver, "create1", .{ transformInfoTemplateData.?.UNCRYPTED_EXTENSION })) });
                            return;
                        }
                    }
                } else if (Inheritance.call(extension.?, "compareTo", .{ transformInfoTemplateData.?.ENCRYPTED_EXTENSION }) == 0) {
                    const stringBuffer: ?*StringMaker = StringMaker.create();
                    _ = Inheritance.call(stringBuffer.?, "append", .{ filePath });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.EXTENSION_SEP });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ transformInfoTemplateData.?.ENCRYPTED_EXTENSION });
                    const file: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ Object.toString(Object.of(stringBuffer)) }));
                    if (file.?.isFile()) {
                        _ = Inheritance.call(self, "setEncryptedTemplateFileAsInputStream", .{ file });
                    }
                } else {
                    std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("View Template File Type Is Not Recognized: "), Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getTemplateFilePath").getTemplateFilePath()); break :exception error.Exception; }});
                }
            } else {
                _ = self.setEncryptedTemplateAsInputStream();
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to get Template Data"), self, String.literal("setTemplateAsInputStream()"), e });
//             }
//             std.debug.panic("{any}", .{e});
        { // finally
            _ = Inheritance.call(self.streamUtil.?, "close", .{ outputStream });
            _ = Inheritance.call(self.streamUtil.?, "close", .{ inputStream });
        }
        std.debug.panic("{any}", .{exception: { _ = String.literal("Error setTemplateAsInputStream()"); break :exception error.Exception; }});
    }
};

