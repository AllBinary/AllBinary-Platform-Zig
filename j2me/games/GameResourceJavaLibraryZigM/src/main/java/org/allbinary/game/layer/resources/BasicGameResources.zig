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
// package org.allbinary.game.layer.resources

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameConfigurationCentral = @import("org/allbinary/game/configuration/GameConfigurationCentral.zig").GameConfigurationCentral;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const GameGraphicsResourceUtil = @import("org/allbinary/game/layer/resources/GameGraphicsResourceUtil.zig").GameGraphicsResourceUtil;

pub const BasicGameResources = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.resources.BasicGameResources";
    logUtil: ?*LogUtil = null,
    RESOURCE: ?*String = null,
    RESOURCE_DESTROY: ?*String = null,
    pub var stringBuffer: ?*StringMaker = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        stringBuffer = StringMaker.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.RESOURCE = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.RESOURCE_DESTROY = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn init(self: *Self, ROOT: ?*String, SIZE: []?*String) void {
        { // try
            const scale: i32 = Inheritance.receiverOf(Inheritance.receiverOf(GameConfigurationCentral.getInstance().?.SCALE.?, "getValue").getValue().?, "intValue").intValue();
            if (scale > 1 and scale - 1 < @as(i32, @intCast(SIZE.len))) {
                _ = Inheritance.call(self, "append", .{ ROOT, SIZE[@intCast(scale - 1)] });
            } else {
                std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Invalid Value: ") }).?, "appendint", .{ scale }))); break :exception error.Exception; }});
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.INIT, e });
    }
    

    // throws Exception
    pub fn append(self: *Self, ROOT: ?*String, sizeString: ?*String) void {
        const DESTROY: ?*String = String.literal("_destroy");
        const string: ?*String = Inheritance.upcast(?*String, self.getString());
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "delete", .{ 0, Inheritance.receiverOf(BasicGameResources.stringBuffer.?, "length").length() });
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "append", .{ ROOT });
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "append", .{ string });
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "append", .{ sizeString });
        self.RESOURCE = Inheritance.upcast(@TypeOf(self.RESOURCE), Object.toString(Object.of(BasicGameResources.stringBuffer)));
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "delete", .{ 0, Inheritance.receiverOf(BasicGameResources.stringBuffer.?, "length").length() });
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "append", .{ ROOT });
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "append", .{ DESTROY });
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "append", .{ string });
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "append", .{ sizeString });
        self.RESOURCE_DESTROY = Inheritance.upcast(@TypeOf(self.RESOURCE_DESTROY), Object.toString(Object.of(BasicGameResources.stringBuffer)));
    }
    

    // throws Exception
    pub fn getString(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, Inheritance.receiverOf(GameGraphicsResourceUtil.getInstance().?, "getName").getName());
    }
};

