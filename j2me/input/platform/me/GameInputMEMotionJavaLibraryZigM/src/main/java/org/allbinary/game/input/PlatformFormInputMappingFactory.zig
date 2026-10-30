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
const InputToGameKeyMapping = @import("org/allbinary/game/input/mapping/InputToGameKeyMapping.zig").InputToGameKeyMapping;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const PlatformFormInputMappingFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.PlatformFormInputMappingFactory";
    logUtil: ?*LogUtil = null,
    inputToGameKeyMapping: ?*InputToGameKeyMapping = null,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.inputToGameKeyMapping = Inheritance.upcast(?*InputToGameKeyMapping, InputToGameKeyMapping.getNullInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*PlatformFormInputMappingFactory {
        if (Object.same(PlatformFormInputMappingFactory.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            PlatformFormInputMappingFactory.instance = Inheritance.upcast(@TypeOf(PlatformFormInputMappingFactory.instance), PlatformFormInputMappingFactory.create());
        }
        return Inheritance.cast(?*PlatformFormInputMappingFactory, PlatformFormInputMappingFactory.instance);
    }
    

    pub fn getOrCreate(self: *Self) ?*InputToGameKeyMapping {
        { // try
            if (Object.same(self.inputToGameKeyMapping, InputToGameKeyMapping.getNullInstance())) {
                const inputToGameKeyMapping: ?*InputToGameKeyMapping = InputToGameKeyMapping.create();
                const gameKeyFactory: ?*GameKeyFactory = Inheritance.upcast(?*GameKeyFactory, GameKeyFactory.getInstance());
                _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.UP, gameKeyFactory.?.UP });
                _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.DOWN, gameKeyFactory.?.DOWN });
                _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.LEFT, gameKeyFactory.?.LEFT });
                _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.RIGHT, gameKeyFactory.?.RIGHT });
                _ = Inheritance.call(inputToGameKeyMapping.?, "add", .{ gameKeyFactory.?.KEY_NUM1, gameKeyFactory.?.GAME_A });
                self.inputToGameKeyMapping = inputToGameKeyMapping;
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.GET_INSTANCE, e });
        return self.inputToGameKeyMapping;
    }
};

