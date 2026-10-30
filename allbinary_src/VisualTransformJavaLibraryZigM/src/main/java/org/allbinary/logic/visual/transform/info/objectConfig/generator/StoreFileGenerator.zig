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
// package org.allbinary.logic.visual.transform.info.objectConfig.generator

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const ByteArrayInputStream = @import("java/io/ByteArrayInputStream.zig").ByteArrayInputStream;
// const InputStream = @import("java/io/InputStream.zig").InputStream;
const HashMap = @import("java/util/HashMap.zig").HashMap;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const WeblisketSession = @import("org/allbinary/logic/communication/http/request/session/WeblisketSession.zig").WeblisketSession;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const InputOutputTypeData = @import("org/allbinary/logic/io/InputOutputTypeData.zig").InputOutputTypeData;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const FileUtil = @import("org/allbinary/logic/io/file/FileUtil.zig").FileUtil;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const Replace = @import("org/allbinary/logic/string/regex/replace/Replace.zig").Replace;
const TransformInfoHttpInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface.zig").TransformInfoHttpInterface;
const TransformInfoHttpStoreInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpStoreInterface.zig").TransformInfoHttpStoreInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const TransformInfosData = @import("org/allbinary/logic/visual/transform/info/TransformInfosData.zig").TransformInfosData;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TransformInfoObjectConfigGenerator = @import("org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGenerator.zig").TransformInfoObjectConfigGenerator;

pub const StoreFileGenerator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator";
    base: TransformInfoObjectConfigGenerator = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    output: ?*String = null,
    fileAbPath: ?*AbPath = null,
    file: ?*AbFile = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
        
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TransformInfoObjectConfigGenerator.create().*;
        this.initFields();
        const httpTransformInfoInterface: ?*TransformInfoHttpInterface = Inheritance.cast(?*TransformInfoHttpInterface, transformInfoInterface);
        const weblisketSession: ?*WeblisketSession = Inheritance.callStatic(WeblisketSession, "create2", .{ Inheritance.receiver(httpTransformInfoInterface.?, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.receiver(httpTransformInfoInterface.?, "getPageContext").getPageContext() });
        var stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getWebappPath() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ weblisketSession.?.getStoreName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
        var abPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ Object.toString(Object.of(stringBuffer)), StringUtil.getInstance().?.EMPTY_STRING });
        var fileName: ?*String = Inheritance.cast(?*String, Inheritance.call(Inheritance.receiver(httpTransformInfoInterface.?, "getPropertiesHashMap").getPropertiesHashMap().?, "get", .{ InputOutputTypeData.getInstance().?.FILE }));
        const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
        if (Inheritance.call(stringValidationUtil.?, "isEmpty", .{ fileName })) {
            const transformInfoHttpStoreInterface: ?*TransformInfoHttpStoreInterface = Inheritance.cast(?*TransformInfoHttpStoreInterface, transformInfoInterface);
            fileName = Inheritance.upcast(@TypeOf(fileName), Inheritance.call(Inheritance.receiver(transformInfoInterface.?, "getName").getName().?, "substring", .{ Inheritance.receiverOf(Inheritance.receiver(transformInfoHttpStoreInterface.?, "getStoreName").getStoreName().?, "length").length() + 1 }));
            const outputMappingHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(outputMappingHashMap.?, "put", .{ TransformInfosData.getInstance().?.PREVIEW, String.literal("Preview") });
            _ = Inheritance.call(outputMappingHashMap.?, "put", .{ TransformInfosData.getInstance().?.SMALL_PREVIEW, String.literal("SmallPreview") });
            _ = Inheritance.call(outputMappingHashMap.?, "put", .{ CommonSeps.getInstance().?.SPACE, StringUtil.getInstance().?.EMPTY_STRING });
            const replace: ?*Replace = Inheritance.callStatic(Replace, "create1", .{ outputMappingHashMap });
            fileName = Inheritance.upcast(@TypeOf(fileName), Inheritance.call(replace.?, "all", .{ fileName }));
        }
        if (Inheritance.call(stringValidationUtil.?, "isEmpty", .{ fileName })) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("TransformInfoObjectConfigGenerator FileName Not Specified"); break :exception error.Exception; }});
        }
        var tempOutput: ?*String = Inheritance.cast(?*String, Inheritance.call(Inheritance.receiver(httpTransformInfoInterface.?, "getPropertiesHashMap").getPropertiesHashMap().?, "get", .{ InputOutputTypeData.getInstance().?.NAME }));
        if (Inheritance.call(stringValidationUtil.?, "isEmpty", .{ tempOutput })) {
            tempOutput = Inheritance.upcast(@TypeOf(tempOutput), InputOutputTypeData.getInstance().?.DEFAULT);
        }
        this.output = tempOutput;
        if (Inheritance.call(stringValidationUtil.?, "isEmpty", .{ this.output })) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("TransformInfoObjectConfigGenerator Output=extension Not Specified"); break :exception error.Exception; }});
        }
        stringBuffer = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ fileName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.EXTENSION_SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ this.output });
        abPath = Inheritance.callStatic(AbPath, "create2", .{ Object.toString(Object.of(abPath)), Object.toString(Object.of(stringBuffer)) });
        this.fileAbPath = abPath;
        this.file = Inheritance.upcast(@TypeOf(this.file), Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ this.fileAbPath }));
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("File: "), Object.toString(Object.of(this.fileAbPath))), this, this.commonStrings.?.CONSTRUCTOR });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn process(self: *Self, input: ?*String) ?*String {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Processing"), self, self.commonStrings.?.PROCESS });
        }
        if (!self.file.?.exists()) {
            _ = self.file.?.createNewFile();
        }
        if (self.file.?.exists()) {
            const inputStream: ?*InputStream = Inheritance.upcast(?*InputStream, Inheritance.callStatic(ByteArrayInputStream, "create1", .{ input.?.getBytes() }));
            _ = Inheritance.call(FileUtil.getInstance().?, "write", .{ inputStream, self.file });
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Could Not Create: "), Object.toString(Object.of(self.fileAbPath))); break :exception error.Exception; }});
        }
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Processed"), self, self.commonStrings.?.PROCESS });
        }
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
};

