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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PersistentInputMapping = @import("org/allbinary/game/input/mapping/PersistentInputMapping.zig").PersistentInputMapping;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const MotionJ2MEGameInputMapping = @import("org/allbinary/game/input/MotionJ2MEGameInputMapping.zig").MotionJ2MEGameInputMapping;

pub const PlatformInputMappingFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.PlatformInputMappingFactory";
    logUtil: ?*LogUtil = null,
    inputToGameKeyMapping: ?*PersistentInputMapping = null,
    var instance: ?*PlatformInputMappingFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PlatformInputMappingFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.inputToGameKeyMapping = Inheritance.upcast(?*PersistentInputMapping, PersistentInputMapping.getNullInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*PlatformInputMappingFactory {
        return Inheritance.upcast(?*PlatformInputMappingFactory, PlatformInputMappingFactory.instance);
    }
    

    pub fn getPersistentInputMappingInstance(self: *Self) ?*PersistentInputMapping {
        { // try
            if (Object.same(self.inputToGameKeyMapping, PersistentInputMapping.getNullInstance())) {
                self.inputToGameKeyMapping = Inheritance.upcast(@TypeOf(self.inputToGameKeyMapping), MotionJ2MEGameInputMapping.create());
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.GET_INSTANCE, e });
        return self.inputToGameKeyMapping;
    }
};

