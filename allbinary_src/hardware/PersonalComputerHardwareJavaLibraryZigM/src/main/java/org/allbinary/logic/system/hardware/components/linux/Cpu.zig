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
// package org.allbinary.logic.system.hardware.components.linux

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const FileReader = @import("java/io/FileReader.zig").FileReader;
// const LineNumberReader = @import("java/io/LineNumberReader.zig").LineNumberReader;
const HashMap = @import("java/util/HashMap.zig").HashMap;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const LogConfigTypeFactory = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.zig").LogConfigTypeFactory;
const LogConfigTypes = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypes.zig").LogConfigTypes;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const FilePathData = @import("org/allbinary/logic/io/file/FilePathData.zig").FilePathData;
const SubDirectory = @import("org/allbinary/logic/io/file/directory/SubDirectory.zig").SubDirectory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CpuInterface = @import("org/allbinary/logic/system/hardware/components/interfaces/CpuInterface.zig").CpuInterface;
const HardwareComponentInterface = @import("org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface.zig").HardwareComponentInterface;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const CpuInfo = @import("org/allbinary/logic/system/hardware/components/linux/CpuInfo.zig").CpuInfo;

pub const Cpu = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.hardware.components.linux.Cpu";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    CPUFILE: ?*String = null,
    cpuHashMap: ?*HashMap = null,
    // Implements CpuInterface
    // Implements HardwareComponentInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.CPUFILE = String.literal("/proc/cpuinfo");
        this.cpuHashMap = null;
    }
    

    pub fn create1(filePath: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "init", .{ filePath });
        return this;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "init", .{ this.CPUFILE });
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, filePath: ?*String) void {
        const lineNumberReader: ?*LineNumberReader = null;
        { // try
            _ = Inheritance.call(self, "init", .{ lineNumberReader, filePath });
        }
        // catch (Exception e):
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.OS })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Cpu Data: ") }).?, "append", .{ Object.toString(Object.of(self)) }))), self, self.commonStrings.?.CONSTRUCTOR, e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn init2(self: *Self, lineNumberReaderParameter: ?*LineNumberReader, filePath: ?*String) void {
        var lineNumberReader = lineNumberReaderParameter;
        { // try
            const fileReader: ?*FileReader = Inheritance.callStatic(FileReader, "create1", .{ filePath });
            lineNumberReader = Inheritance.callStatic(LineNumberReader, "create1", .{ fileReader });
            self.cpuHashMap = Inheritance.upcast(@TypeOf(self.cpuHashMap), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            if (lineNumberReader == null) {
                const fileVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(SubDirectory.getInstance().?, "search", .{ filePath, Inheritance.callStatic(AbFile, "createAbFile", .{ FilePathData.getInstance().?.PATH_START }) }));
                if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.OS })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Cpu File BasicArrayList Size: ") }).?, "appendint", .{ fileVector.?.size() }))), self, self.commonStrings.?.CONSTRUCTOR });
                }
                if (!fileVector.?.isEmpty()) {
                    const file: ?*AbFile = Inheritance.cast(?*AbFile, Inheritance.call(fileVector.?, "get", .{ 0 }));
                    lineNumberReader = Inheritance.callStatic(LineNumberReader, "create1", .{ Inheritance.callStatic(FileReader, "create1", .{ file.?.getPath() }) });
                }
            }
            if (lineNumberReader != null) {
                var nextLine: ?*String = Inheritance.upcast(?*String, lineNumberReader.?.readLine());
                while (lineNumberReader != null and nextLine != null) {
                    const index: i32 = Inheritance.call(nextLine.?, "indexOf", .{ ':' });
                    if (index >= 0) {
                        const key: ?*String = Inheritance.upcast(?*String, nextLine.?.substring2(0, index));
                        const valueIndex: i32 = index + 1;
                        const value: ?*String = Inheritance.upcast(?*String, nextLine.?.substring2(valueIndex, nextLine.?.length()));
                        if (Inheritance.call(key.?, "indexOf", .{ Object.toString(Object.of(CpuInfo.PROCESSOR)) }) >= 0) {
                            _ = Inheritance.call(self.cpuHashMap.?, "put", .{ CpuInfo.PROCESSOR, value });
                        }
                        if (Inheritance.call(key.?, "indexOf", .{ Object.toString(Object.of(CpuInfo.VENDORID)) }) >= 0) {
                            _ = Inheritance.call(self.cpuHashMap.?, "put", .{ CpuInfo.VENDORID, value });
                        }
                        if (Inheritance.call(key.?, "indexOf", .{ Object.toString(Object.of(CpuInfo.CPUFAMILY)) }) >= 0) {
                            _ = Inheritance.call(self.cpuHashMap.?, "put", .{ CpuInfo.CPUFAMILY, value });
                        }
                        if (Inheritance.call(key.?, "indexOf", .{ Object.toString(Object.of(CpuInfo.MODEL)) }) >= 0) {
                            _ = Inheritance.call(self.cpuHashMap.?, "put", .{ CpuInfo.MODEL, value });
                        }
                        if (Inheritance.call(key.?, "indexOf", .{ Object.toString(Object.of(CpuInfo.MODELNAME)) }) >= 0) {
                            _ = Inheritance.call(self.cpuHashMap.?, "put", .{ CpuInfo.MODELNAME, value });
                        }
                        if (Inheritance.call(key.?, "indexOf", .{ Object.toString(Object.of(CpuInfo.STEPPING)) }) >= 0) {
                            _ = Inheritance.call(self.cpuHashMap.?, "put", .{ CpuInfo.STEPPING, value });
                        }
                        if (Inheritance.call(key.?, "indexOf", .{ Object.toString(Object.of(CpuInfo.CPUMHZ)) }) >= 0) {
                            _ = Inheritance.call(self.cpuHashMap.?, "put", .{ CpuInfo.CPUMHZ, value });
                        }
                        if (Inheritance.call(key.?, "indexOf", .{ Object.toString(Object.of(CpuInfo.CACHESIZE)) }) >= 0) {
                            _ = Inheritance.call(self.cpuHashMap.?, "put", .{ CpuInfo.CACHESIZE, value });
                        }
                    }
                    nextLine = Inheritance.upcast(@TypeOf(nextLine), lineNumberReader.?.readLine());
                }
            }
        }
        { // finally
            if (lineNumberReader != null) {
                _ = lineNumberReader.?.close();
            }
        }
    }
    

    pub fn getProcessor(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.cpuHashMap.?, "get", .{ CpuInfo.PROCESSOR }));
    }
    

    pub fn getVendorId(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.cpuHashMap.?, "get", .{ CpuInfo.VENDORID }));
    }
    

    pub fn getCpuFamily(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.cpuHashMap.?, "get", .{ CpuInfo.CPUFAMILY }));
    }
    

    pub fn getModel(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.cpuHashMap.?, "get", .{ CpuInfo.MODEL }));
    }
    

    pub fn getModelName(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.cpuHashMap.?, "get", .{ CpuInfo.MODELNAME }));
    }
    

    pub fn getStepping(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.cpuHashMap.?, "get", .{ CpuInfo.STEPPING }));
    }
    

    pub fn getCpuSpeed(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.cpuHashMap.?, "get", .{ CpuInfo.CPUMHZ }));
    }
    

    pub fn getCacheSize(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.cpuHashMap.?, "get", .{ CpuInfo.CACHESIZE }));
    }
    

    pub fn compareTo(self: *Self, cpuInterface: ?*CpuInterface) bool {
        _ = cpuInterface;
        _ = self;
        return true;
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn compareTo(self: *Self, componentInterface: ?*HardwareComponentInterface) bool {
        _ = componentInterface;
        _ = self;
        return true;
    }
    

    pub fn toString(self: *Self) ?*String {
        const commonLabels: ?*CommonLabels = Inheritance.upcast(?*CommonLabels, CommonLabels.getInstance());
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        const stringMaker: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ Object.toString(Object.of(CpuInfo.PROCESSOR)) }).?, "append", .{ commonLabels.?.COLON_SEP }).?, "append", .{ self.getProcessor() });
        _ = Inheritance.call(stringMaker.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ Object.toString(Object.of(CpuInfo.VENDORID)) }).?, "append", .{ commonLabels.?.COLON_SEP }).?, "append", .{ self.getVendorId() });
        _ = Inheritance.call(stringMaker.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ Object.toString(Object.of(CpuInfo.CPUFAMILY)) }).?, "append", .{ commonLabels.?.COLON_SEP }).?, "append", .{ self.getCpuFamily() });
        _ = Inheritance.call(stringMaker.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ Object.toString(Object.of(CpuInfo.MODEL)) }).?, "append", .{ commonLabels.?.COLON_SEP }).?, "append", .{ self.getModel() });
        _ = Inheritance.call(stringMaker.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ Object.toString(Object.of(CpuInfo.MODELNAME)) }).?, "append", .{ commonLabels.?.COLON_SEP }).?, "append", .{ self.getModelName() });
        _ = Inheritance.call(stringMaker.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ Object.toString(Object.of(CpuInfo.STEPPING)) }).?, "append", .{ commonLabels.?.COLON_SEP }).?, "append", .{ self.getStepping() });
        _ = Inheritance.call(stringMaker.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ Object.toString(Object.of(CpuInfo.CPUMHZ)) }).?, "append", .{ commonLabels.?.COLON_SEP }).?, "append", .{ self.getCpuSpeed() });
        _ = Inheritance.call(stringMaker.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ Object.toString(Object.of(CpuInfo.CACHESIZE)) }).?, "append", .{ commonLabels.?.COLON_SEP }).?, "append", .{ self.getCacheSize() });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringMaker)));
    }
};

