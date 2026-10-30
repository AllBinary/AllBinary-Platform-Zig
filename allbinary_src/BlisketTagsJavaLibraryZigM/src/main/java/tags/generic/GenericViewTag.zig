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
// package tags.generic

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const InputOutputTypeData = @import("org/allbinary/logic/io/InputOutputTypeData.zig").InputOutputTypeData;
const TransformTag = @import("tags/TransformTag.zig").TransformTag;

pub const GenericViewTag = struct {
    const Self = @This();
    pub const java_name = "tags.generic.GenericViewTag";
    base: TransformTag = undefined,
    logUtil: ?*LogUtil = null,
    output: ?*String = null,
    file: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.output = null;
        this.file = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TransformTag.create().*;
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.START, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setOutput(self: *Self, value: ?*String) void {
        self.output = value;
        _ = Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ InputOutputTypeData.getInstance().?.NAME, self.output });
    }
    

    pub fn setFile(self: *Self, value: ?*String) void {
        self.file = value;
        _ = Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ InputOutputTypeData.getInstance().?.FILE, self.file });
    }
};

