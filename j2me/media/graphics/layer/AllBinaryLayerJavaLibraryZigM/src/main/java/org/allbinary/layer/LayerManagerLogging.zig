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
// package org.allbinary.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const LayerManager = @import("org/allbinary/layer/LayerManager.zig").LayerManager;
const LayerManagerLoggingBase = @import("org/allbinary/layer/LayerManagerLoggingBase.zig").LayerManagerLoggingBase;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const LayerManagerLogging = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.layer.LayerManagerLogging";
    base: LayerManagerLoggingBase = undefined,
    logUtil: ?*LogUtil = null,
    stringBuilder: ?*StringMaker = null,
    APPEND: ?*String = null,
    APPEND_: ?*String = null,
    _AT_: ?*String = null,
    ATTEMPT_REMOVE_: ?*String = null,
    REMOVE_: ?*String = null,
    REMOVE: ?*String = null,
    DID_NOT_REMOVE: ?*String = null,
    CLEAR: ?*String = null,
    var instance: ?*LayerManagerLogging = undefined;
    var removeFailed: bool = false;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LayerManagerLogging.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.stringBuilder = StringMaker.create();
        this.APPEND = String.literal("append");
        this.APPEND_ = String.literal(" append: ");
        this._AT_ = String.literal(" at: ");
        this.ATTEMPT_REMOVE_ = String.literal(" Remove Attempt: ");
        this.REMOVE_ = String.literal(" Remove: ");
        this.REMOVE = String.literal("remove");
        this.DID_NOT_REMOVE = String.literal(" Did not remove: ");
        this.CLEAR = String.literal(" Clear List");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = LayerManagerLoggingBase.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*LayerManagerLogging {
        return Inheritance.upcast(?*LayerManagerLogging, LayerManagerLogging.instance);
    }
    

    // throws Exception
    pub fn append(self: *Self, layerInterface: ?*AllBinaryLayer) void {
        _ = Inheritance.call(self.stringBuilder.?, "delete", .{ 0, self.stringBuilder.?.length() });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(self.stringBuilder.?, "appendint", .{ @as(i32, @intCast(Inheritance.call(TsUtil.getInstance().?, "hashCode", .{ self }))) }).?, "append", .{ self.APPEND_ }).?, "append", .{ Inheritance.receiver(layerInterface.?, "getName").getName() }))), self, self.APPEND });
    }
    

    pub fn appendAt(self: *Self, layerInterface: ?*AllBinaryLayer, index: i32) void {
        _ = Inheritance.call(self.stringBuilder.?, "delete", .{ 0, self.stringBuilder.?.length() });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(self.stringBuilder.?, "appendint", .{ @as(i32, @intCast(Inheritance.call(TsUtil.getInstance().?, "hashCode", .{ self }))) }).?, "append", .{ self.APPEND_ }).?, "append", .{ Inheritance.receiver(layerInterface.?, "getName").getName() }).?, "append", .{ self._AT_ }).?, "appendint", .{ index }))), self, self.APPEND });
    }
    

    pub fn remove(self: *Self, layerInterface: ?*AllBinaryLayer) void {
        if (layerInterface == null) {
            _ = Inheritance.call(self.stringBuilder.?, "delete", .{ 0, self.stringBuilder.?.length() });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(self.stringBuilder.?, "appendint", .{ @as(i32, @intCast(Inheritance.call(TsUtil.getInstance().?, "hashCode", .{ self }))) }).?, "append", .{ self.ATTEMPT_REMOVE_ }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ layerInterface }) }))), self, self.REMOVE });
        } else {
            _ = Inheritance.call(self.stringBuilder.?, "delete", .{ 0, self.stringBuilder.?.length() });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(self.stringBuilder.?, "appendint", .{ @as(i32, @intCast(Inheritance.call(TsUtil.getInstance().?, "hashCode", .{ self }))) }).?, "append", .{ self.ATTEMPT_REMOVE_ }).?, "append", .{ Inheritance.receiver(layerInterface.?, "getName").getName() }))), self, self.REMOVE });
        }
    }
    

    pub fn removeResult(self: *Self, layerManager: ?*LayerManager, layerInterface: ?*AllBinaryLayer, result: bool) void {
        _ = layerManager;
        if (layerInterface == null) {
            _ = Inheritance.call(self.stringBuilder.?, "delete", .{ 0, self.stringBuilder.?.length() });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(self.stringBuilder.?, "appendint", .{ @as(i32, @intCast(Inheritance.call(TsUtil.getInstance().?, "hashCode", .{ self }))) }).?, "append", .{ self.REMOVE_ }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ layerInterface }) }))), self, self.REMOVE });
        } else if (result) {
            if (LayerManagerLogging.removeFailed) {
                _ = Inheritance.call(self.stringBuilder.?, "delete", .{ 0, self.stringBuilder.?.length() });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(self.stringBuilder.?, "appendint", .{ @as(i32, @intCast(Inheritance.call(TsUtil.getInstance().?, "hashCode", .{ self }))) }).?, "append", .{ self.REMOVE_ }).?, "append", .{ Inheritance.receiver(layerInterface.?, "getName").getName() }))), self, self.REMOVE });
            }
        } else {
            _ = Inheritance.call(self.stringBuilder.?, "delete", .{ 0, self.stringBuilder.?.length() });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(self.stringBuilder.?, "appendint", .{ @as(i32, @intCast(Inheritance.call(TsUtil.getInstance().?, "hashCode", .{ self }))) }).?, "append", .{ self.DID_NOT_REMOVE }).?, "append", .{ Inheritance.receiver(layerInterface.?, "getName").getName() }))), self, self.REMOVE });
            LayerManagerLogging.removeFailed = true;
        }
    }
    

    pub fn log(self: *Self, layerManager: ?*LayerManager) void {
        _ = Inheritance.call(self.stringBuilder.?, "delete", .{ 0, self.stringBuilder.?.length() });
        const size: i32 = layerManager.?.getSize();
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        _ = Inheritance.call(Inheritance.call(self.stringBuilder.?, "append", .{ String.fromBytes(std.fmt.allocPrint(allocator, "{x}", .{@as(u32, @bitCast(@as(i32, Inheritance.call(TsUtil.getInstance().?, "hashCode", .{ layerManager }))))}) catch unreachable) }).?, "append", .{ commonSeps.?.COLON_SEP });
        _ = Inheritance.call(Inheritance.call(self.stringBuilder.?, "appendint", .{ size }).?, "append", .{ commonSeps.?.COLON_SEP });
        var allBinaryLayer: ?*AllBinaryLayer = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            allBinaryLayer = Inheritance.upcast(@TypeOf(allBinaryLayer), (Inheritance.cast(?*AllBinaryLayer, Inheritance.call(layerManager.?, "getLayerAt", .{ index }))));
            _ = Inheritance.call(Inheritance.call(self.stringBuilder.?, "append", .{ Inheritance.receiver(allBinaryLayer.?, "getName").getName() }).?, "append", .{ commonSeps.?.COMMA });
            }
        }
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(self.stringBuilder)), self, self.REMOVE });
    }
    

    pub fn clear(self: *Self) void {
        _ = Inheritance.call(self.stringBuilder.?, "delete", .{ 0, self.stringBuilder.?.length() });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(self.stringBuilder.?, "appendint", .{ @as(i32, @intCast(Inheritance.call(TsUtil.getInstance().?, "hashCode", .{ self }))) }).?, "append", .{ self.CLEAR }))), self, self.CLEAR });
    }
};

