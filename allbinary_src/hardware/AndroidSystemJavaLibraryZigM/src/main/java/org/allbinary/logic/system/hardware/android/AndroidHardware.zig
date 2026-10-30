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
// package org.allbinary.logic.system.hardware.android

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Closeable = @import("java/io/Closeable.zig").Closeable;
// const FileReader = @import("java/io/FileReader.zig").FileReader;
// const LineNumberReader = @import("java/io/LineNumberReader.zig").LineNumberReader;
const NullCloseable = @import("org/allbinary/logic/io/NullCloseable.zig").NullCloseable;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const HardwareInterface = @import("org/allbinary/logic/system/hardware/HardwareInterface.zig").HardwareInterface;
const UnknownHardware = @import("org/allbinary/logic/system/hardware/components/android/UnknownHardware.zig").UnknownHardware;
const HardwareComponentInterface = @import("org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface.zig").HardwareComponentInterface;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

pub const AndroidHardware = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.hardware.android.AndroidHardware";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    componentInterfaceVector: ?*BasicArrayList = null,
    PROC_BUS_INPUT_DIRECTORY: ?*String = null,
    DEVICES: ?*String = null,
    MINHARDWARE: i32 = 0,
    // Implements HardwareInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.componentInterfaceVector = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.PROC_BUS_INPUT_DIRECTORY = String.literal("/proc/bus/input/");
        this.DEVICES = Inheritance.upcast(?*String, String.plus(this.PROC_BUS_INPUT_DIRECTORY, String.literal("devices/")));
        this.MINHARDWARE = 3;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "init", .{ this.DEVICES });
        const size: i32 = this.componentInterfaceVector.?.size();
        if (size < this.MINHARDWARE) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Not Enough Data For A Valid License On Linux"); break :exception error.Exception; }});
        }
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, filePath: ?*String) void {
        var lineNumberReader: ?*Closeable = Inheritance.upcast(?*Closeable, NullCloseable.NULL_CLOSEABLE);
        { // try
            lineNumberReader = Inheritance.upcast(@TypeOf(lineNumberReader), Inheritance.call(self, "get", .{ filePath }));
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(String.literal("Hardware Data: "), Object.toString(Object.of(self))), self, self.commonStrings.?.INIT, e });
//             std.debug.panic("{any}", .{e});
        { // finally
            if (lineNumberReader != null) {
                _ = lineNumberReader.?.close();
            }
        }
    }
    

    // throws Exception
    pub fn get(self: *Self, filePath: ?*String) ?*LineNumberReader {
        self.componentInterfaceVector = Inheritance.upcast(@TypeOf(self.componentInterfaceVector), BasicArrayListD.create());
        const pciFile: ?*FileReader = Inheritance.callStatic(FileReader, "create1", .{ filePath });
        const lineNumberReader: ?*LineNumberReader = Inheritance.callStatic(LineNumberReader, "create1", .{ pciFile });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("File Found"), self, self.commonStrings.?.CONSTRUCTOR });
        var nextLine: ?*String = Inheritance.upcast(?*String, lineNumberReader.?.readLine());
        while (nextLine != null) {
            nextLine = Inheritance.upcast(@TypeOf(nextLine), lineNumberReader.?.readLine());
            _ = Inheritance.call(self.componentInterfaceVector.?, "add", .{ Inheritance.callStatic(UnknownHardware, "create1", .{ nextLine }) });
        }
        return Inheritance.upcast(?*LineNumberReader, lineNumberReader);
    }
    

    pub fn getComponent(self: *Self, index: i32) ?*HardwareComponentInterface {
        return Inheritance.cast(?*HardwareComponentInterface, Inheritance.call(self.componentInterfaceVector.?, "get", .{ index }));
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuilder: ?*StringMaker = StringMaker.create();
        const size: i32 = self.componentInterfaceVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const componentInterface: ?*HardwareComponentInterface = Inheritance.cast(?*HardwareComponentInterface, Inheritance.call(self.componentInterfaceVector.?, "get", .{ index }));
            _ = Inheritance.call(stringBuilder.?, "append", .{ Object.toString(Object.of(componentInterface)) });
            _ = Inheritance.call(stringBuilder.?, "append", .{ CommonSeps.getInstance().?.NEW_LINE });
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuilder)));
    }
    

    pub fn compareTo(self: *Self, hardwareInterface: ?*HardwareInterface) bool {
        _ = hardwareInterface;
        _ = self;
        return true;
    }
    

    pub fn difference(self: *Self, hardwareInterface: ?*HardwareInterface) ?*ABHashtable {
        _ = hardwareInterface;
        _ = self;
        return Inheritance.upcast(?*ABHashtable, StdUtil.getInstance().?.NULL_TABLE);
    }
};

